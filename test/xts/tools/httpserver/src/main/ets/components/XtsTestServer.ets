/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { socket } from '@kit.NetworkKit'
import { BusinessError } from '@kit.BasicServicesKit';
import { util, worker } from '@kit.ArkTS';
import { webview } from '@kit.ArkWeb';
import { resourceManager } from '@kit.LocalizationKit';

import { buffer } from '@kit.ArkTS'
import fs from '@ohos.file.fs';
import http from '@ohos.net.http';

const TAG : string = "XtsTestServer";

const FAVICON_PATH : string = "/favicon.ico";
const USERAGENT_PATH : string = "/useragent.html";

const TEST_DOWNLOAD_PATH : string = "/download.html";
const RANGE_DOWNLOAD_PATH : string = "/rdownload.html";
const CACHEABLE_TEST_DOWNLOAD_PATH : string = "/cacheable-download.html";
const DOWNLOAD_ID_PARAMETER : string = "downloadId";
const NUM_BYTES_PARAMETER : string = "numBytes";
const CHUNK_SIZE_PARAMETER : string = "chunkSize";
const DELAY_MILLS_PARAMETER : string = "delayMillis";

const ASSET_PREFIX : string = "/assets/";
const RAW_PREFIX : string = "raw/";
const FAVICON_ASSET_PATH : string = ASSET_PREFIX + "webkit/favicon.png";
const APPCACHE_PATH : string = "/appcache.html";
const APPCACHE_MANIFEST_PATH : string = "/appcache.manifest";
const REDIRECT_PREFIX : string = "/redirect";
const QUERY_REDIRECT_PATH : string = "/alt_redirect";
const ECHO_HEADERS_PREFIX : string = "/echo_headers";
const DELAY_PREFIX : string = "/delayed";
const BINARY_PREFIX = "/binary";
const SET_COOKIE_PREFIX = "/setcookie";
const COOKIE_PREFIX = "/cookie";
const LINKED_SCRIPT_PREFIX = "/linkedscriptprefix";
const AUTH_PREFIX = "/auth";
const NOLENGTH_POSTFIX = "nolength";
const DELAY_MILLIS = 2000;
const POST_PATH = "/postUrl";
const PUT_PATH = "/putUrl";
const DELETE_PATH = "/deleteUrl";
const SHUTDOWN = "/shutdown";

const ECHOED_RESPONSE_HEADER_PREFIX = "x-request-header-";

const AUTH_REALM = "OpenHarmony XTS";
const AUTH_USER = "xts";
const AUTH_PASS = "secret";
// base64 encoded credentials "cts:secret" used for basic authentication
const AUTH_CREDENTIALS = "Basic Y3RzOnNlY3JldA==";

const MESSAGE_401 = "401 unauthorized";
const MESSAGE_403 = "403 forbidden";
const MESSAGE_404 = "404 not found";


export class XtsTestServer {

  private static sReasons:Record<number,string> ;

  private mContext!:Context;

  private mServerUri !: string;
  private mResources !: Resource;
  private mSsl : boolean;
  private mDocValidity !: number;
  private mDocAge !: number;
  private webUrl:string = "";
  private tcpServer :socket.TCPSocketServer = socket.constructTCPSocketServerInstance();
  private tlsServer :socket.TLSSocketServer = socket.constructTLSSocketServerInstance();
  private mServerThread !: ServerThread;
  private cSocket!: socket.TCPSocketConnection;
  private csSocket!: socket.TLSSocketConnection;
  private rCount:number = 0;
  private reqArr:string[] = new Array<string>();
  private postDataArr:string[] = new Array<string>();
  private readonly mRequestCountMap: Map<string, number>= new Map<string,number>();
  private readonly mLastRequestMap: Map<string,http.HttpRequest> = new Map<string,http.HttpRequest>();


  constructor(context:Context, sslMode:boolean) {
    this.mContext = context;
    this.mSsl = sslMode;
    if (this.mSsl == true) {
      this.mServerUri = "https:" + "//localhost:" + this.httpsPort;
      this.startHttps();
    } else {
      this.mServerUri = "http:"  + "//localhost:" + this.port;
      this.start();
    }
  }

  port: number  = 8080;

  httpsPort: number = 8443;

  getBaseUri() {
    return this.mServerUri;
  }

  getAbsoluteUrl(path:string) {
    return this.getBaseUri() + path;
  }

  getAssetUrl(path:string):string {
    return this.getBaseUri() + ASSET_PREFIX + path;
  }

  getDelayedAssetUrl(path:string) {
    return this.getDelayedAssetUrl2(path, DELAY_MILLIS) as string;
  }

  getDelayedAssetUrl2(path:string, delayMs:number) {
    return this.getBaseUri() + DELAY_PREFIX + "/" +delayMs + ASSET_PREFIX + path;
  }

  getAuthAssetUrl(path:string) {
    return this.getBaseUri() + AUTH_PREFIX + ASSET_PREFIX + path;
  }

  getEchoHeadersUrl() {
    return this.getBaseUri() + ECHO_HEADERS_PREFIX;
  }

  getRedirectingAssetUrl(path:string) {
    return this.getRedirectingAssetUrl2(path, 1);
  }

  getRedirectingAssetUrl2(path:string, numRedirects:number):string {
    let url = this.getBaseUri();
    for (let i=0; i < numRedirects; i++) {
      url += REDIRECT_PREFIX;
    }
    return url + ASSET_PREFIX + path;
  }

  getQUeryRedirectingAssetUrl(path:string) {
    return this.getBaseUri() + QUERY_REDIRECT_PATH + "?dest=" + encodeURIComponent(this.getAssetUrl(path));
  }

  getSetCookieUrl(path:string, key:string, value:string) {
    return this.getSetCookieUrl2(path, key, value, "");
  }

  getSetCookieUrl2(path:string, key:string, value:string, attributes:string):string {
    let url =  this.getBaseUri() + SET_COOKIE_PREFIX + path + "?key=" + key + "&value=" + value;
    if (attributes.length > 0) {
      url += "&attributes=" + attributes;
    }
    return url;
  }

  getLinkedScriptUrl(path:string, url:string) {
    return this.getBaseUri() + LINKED_SCRIPT_PREFIX + path + "?url=" + encodeURIComponent(url);
  }

  getBinaryUrl(mimeType:string,contentLength:number) {
    return this.getBaseUri() + BINARY_PREFIX + "?type=" + mimeType + "&length=" + contentLength;
  }

  getCookieUrl(path:string) {
    return this.getBaseUri() + COOKIE_PREFIX + "/" + path;
  }

  getUserAgentUrl() {
    return this.getBaseUri() + USERAGENT_PATH;
  }

  getAppCacheUrl() {
    return this.getBaseUri() + APPCACHE_PATH;
  }

  getTestDownloadUrl(downloadId:string, numBytes:number) {
    return this.getBaseUri() + TEST_DOWNLOAD_PATH + "?" +DOWNLOAD_ID_PARAMETER+ "=" + downloadId +
      "&" + NUM_BYTES_PARAMETER + "=" + numBytes;
  }

  getRangeDownloadUrl(downloadId:string, numBytes:number, chunkSize:number, delayMills:number) {
    return this.getBaseUri() + RANGE_DOWNLOAD_PATH + "?" +DOWNLOAD_ID_PARAMETER+ "=" + downloadId +
      "&" + NUM_BYTES_PARAMETER + "=" + numBytes + "&" + CHUNK_SIZE_PARAMETER + "=" + chunkSize + "&"
      + DELAY_MILLS_PARAMETER + "=" + delayMills;
  }

  getCacheableTestDownloadUrl(downloadId:string, numBytes:number) {
    return this.getBaseUri() + CACHEABLE_TEST_DOWNLOAD_PATH + "?" +DOWNLOAD_ID_PARAMETER+ "=" + downloadId +
      "&" + NUM_BYTES_PARAMETER + "=" + numBytes;
  }

  getPostUrl() {
    return this.getBaseUri() + POST_PATH;
  }

  getPutUrl() {
    return this.getBaseUri() + PUT_PATH;
  }

  getDeleteUrl() {
    return this.getBaseUri() + DELETE_PATH;
  }

  wasResourceRequested(url:string): boolean {
    for(let i=0; i< this.reqArr.length; i++) {
      if (this.reqArr[i] == url) return true;
    }
    return false;
  }

  getRequestCount() {
    return this.reqArr.length;
  }

  getRequestCount2(requestPath:string) {
    let count:number = 0;
    for(let i=0; i< this.reqArr.length; i++) {
      if (this.reqArr[i] == requestPath) count++;
    }
    return count;
  }

  getRequestUrls() {
    return JSON.stringify(this.reqArr);
  }

  getPostData() {
    return JSON.stringify(this.postDataArr);
  }

  setDocumentValidity(timeMillis:number) {
    this.mDocValidity = timeMillis;
  }

  setDocumentAge(timeMillis:number) {
    this.mDocAge = timeMillis;
  }

  getShutdownUrl() {
    return this.getBaseUri() + SHUTDOWN;
  }

  private getRelativeAssetUrl(path:string) {
    return ASSET_PREFIX + path;
  }

  private getResponse() {

  }

  start() {
    this.webUrl = "http://127.0.0.1:" + this.port.toString()
    let listenAddr: socket.NetAddress = {
      address: '0.0.0.0',
      port: this.port,
      family: 1
    }
    this.tcpServer.listen(listenAddr, (err: BusinessError) => {
      if (err) {
        this.webUrl += "listen fail \r\n";
        return;
      }
      this.webUrl += "listen success \r\n";
    })

    this.tcpServer.on('connect', (clientSocket: socket.TCPSocketConnection) => {
      this.cSocket = clientSocket;
      clientSocket.on('message', async (msgInfo: socket.SocketMessageInfo)  =>  {
        let requestMsg = buf2String(new Uint8Array(msgInfo.message));
        console.info(TAG, "json: " + requestMsg);
        let rqArr:string[] = requestMsg.split("\r\n");
        let requestLine:string[] = rqArr[0].split(" ");
        let cookie:string = "";
        let auth:string = "";
        let ua:string = "";
        let delayMillis:number = 0;
        let rangeBytes = "";
        for (let i=0;i<rqArr.length;i++) {
          let reqline:string = rqArr[i];
          if (reqline.startsWith("User-Agent")) {
            ua = reqline.split(":")[1];
          } else if (reqline.startsWith("Authorization")) {
            auth = reqline.split(":")[1];
          } else if (reqline.startsWith("Cookie")) {
            cookie = reqline.split(":")[1];
          } else if (reqline.startsWith("Range") || reqline.startsWith("range")) {
            let bs:string = reqline.split(":")[1].trim();
            rangeBytes = bs.replace("bytes=", "").split("-")[0];
          }
        }
        if(requestLine[0] == "POST") {
          this.postDataArr.push(rqArr[rqArr.length-1]);
          let page = this.createPage("Post test", "Post test");
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result:string = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: txt/html; charset=utf-8 \r\n"
          result += `Content-Length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;
          clientSocket.send({ data: result })
          console.info(TAG, "json: " + result);
        } else if (requestLine[0] == "PUT") {
          let result:string = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: txt/html; charset=utf-8 \r\n"
          result += `Content-Length: 0 \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += "";
          clientSocket.send({ data: result })
        } else if (requestLine[0] == "DELETE") {
          let result:string = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: txt/html; charset=utf-8 \r\n"
          result += `Content-Length: 0 \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += "";
          clientSocket.send({ data: result })
        }
        let path = requestLine[1];
        this.reqArr.push(this.mServerUri + path);
        let hasQueryParams:boolean = false;
        let query:string = "";
        if (path.indexOf("?") > 0) {
          hasQueryParams = true;
          let ps:string[] = path.split("?");
          path = ps[0];
          query = ps[1];
        }

        if (path.startsWith(ECHO_HEADERS_PREFIX)) {

        }

        if (path.startsWith(FAVICON_PATH)) {
          path = FAVICON_ASSET_PATH;
        }

        if (path.startsWith(DELAY_PREFIX)) {
          let delayPath:string = path.substring(DELAY_PREFIX.length + 1);
          let delay:string = delayPath.substring(0, delayPath.indexOf('/'));
          path = delayPath.substring(delay.length);
          try {
            delayMillis = parseInt(delay);
            await sleep(delayMillis);
          } catch (error) {
            // ignore
          }
        }

        if (path.startsWith(AUTH_PREFIX)) {
          if ((auth.length > 0 && auth === AUTH_CREDENTIALS) && !path.endsWith("embedded_image.html")) {
            path = path.substring(AUTH_PREFIX.length);
          } else {
            let page:string = this.createPage("Unauthorized", "Unauthorized")
            let textEncoder = new util.TextEncoder();
            let contentBuf = textEncoder.encodeInto(page);
            let result = "";
            result += "HTTP/1.1 401 Unauthorized \r\n"
            result += "Content-Type: text/html; charset=utf-8 \r\n"
            result += `Content-Length: ${contentBuf.length} \r\n`
            result += "WWW-Authenticate: Basic realm=" + AUTH_REALM +" \r\n"
            result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
            result += "\r\n"
            result += page;

            clientSocket.send({ data: result })
            console.info(TAG, "json: " + result);
          }
        }

        if (path.startsWith(BINARY_PREFIX)) {
          let mimeType:string = "";
          let length:number = 0;
          try {
            let nvPairArr:string[] = query.split("&");
            for (let i=0;i<nvPairArr.length;i++) {
              let nvPair:string = nvPairArr[i];
              if (nvPair.startsWith("type")) {
                mimeType = nvPair.split("=")[1];
              } else if(nvPair.startsWith("length")) {
                length = parseInt(nvPair.split("=")[1]);
              }
            }
            if (length > 0 && mimeType.length > 0) {
              let result = "";
              if (rangeBytes.length > 0) {
                result += "HTTP/1.1 206 Partial Content \r\n"
                result += `Content-Disposition: attachment; filename=test.bin \r\n`
                result += "Content-Type: " +mimeType+ "; charset=utf-8 \r\n"
                result += `Content-Range: bytes ` +rangeBytes+ `-`+(length-1)+ `/`+length+` \r\n`
                result += `Content-Length: ` +(length-parseInt(rangeBytes))+ ` \r\n`
                result += `Accept-Ranges: bytes \r\n`
                result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                result += "\r\n"
                result += buffer.alloc(length-parseInt(rangeBytes), 1).toString();
              } else {
                result += "HTTP/1.1 200 OK \r\n"
                result += "Content-Disposition: attachment; filename=test.bin \r\n"
                result += "Content-Type: " +mimeType+ "; charset=utf-8 \r\n"
                result += `Content-Length: ` +length+ ` \r\n`
                result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                result += "\r\n"
                result += buffer.alloc(length, 1).toString();
              }
              sleep(500);
              clientSocket.send({ data: result });
              console.info(TAG, "json: " + result);

            } else {
              // fall through , return 404 at the end
            }
          } catch (error) {
            // fall through , return 404 at the end
          }

        } else if (path.startsWith(ASSET_PREFIX)) {
          path = path.substring(ASSET_PREFIX.length);
          if (delayMillis > 0) {
            setTimeout(() => {
              if(path.endsWith("html") || path.endsWith("htm") || path.endsWith("json") || path.endsWith("css") ||
              path.endsWith("xml") || path.endsWith("js") || path.endsWith("txt")) {
                try {
                  getContext(this).resourceManager.getRawFileContent(path).then((value: Uint8Array) => {
                    console.log('value:', value);
                    if (value.length === 0) {
                      console.error("The file content is empty.");
                      return;
                    }

                    let ext:string = path.split(".")[1];
                    let decoder = util.TextDecoder.create('utf-8');
                    let resp = decoder.decodeToString(value);
                    let result = "";
                    result += "HTTP/1.1 200 OK \r\n"
                    result += "Content-Type: text/" +ext+ "; charset=utf-8 \r\n"
                    if (!hasQueryParams || query.indexOf(NOLENGTH_POSTFIX) < 0) {
                      result += `Content-Length: ${resp.length} \r\n`
                    }
                    result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                    result += "\r\n"
                    result += resp;

                    clientSocket.send({ data: result })
                    console.info(TAG, "json: " + result);


                  }).catch((error: BusinessError) => {
                    console.error("getRawFileContent promise error is " + JSON.stringify(error));
                  });
                } catch (error) {
                  let code = (error as BusinessError).code;
                  let message = (error as BusinessError).message;
                  console.error(`promise getRawFileContent failed, error code: ${code}, message: ${message}.`);
                }
              } else {
                try{
                  getContext(this).resourceManager.getRawFile(path).then((value: Uint8Array) => {
                    console.log('value:', value);
                    if (value.length === 0) {
                      console.error("The file content is empty.");
                      return;
                    }

                    const base64 = buffer.from(value).toString("base64");
                    const imageData = `data:image/png;base64,${base64}`;

                    let contentBuf = this.buildRespString(imageData)
                    let result = "";
                    result += "HTTP/1.1 200 OK \r\n"
                    result += "Content-Type: text/html; charset=utf-8 \r\n"
                    result += `Content-Length: ${contentBuf.length} \r\n`
                    result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                    result += "\r\n"
                    result += contentBuf;

                    clientSocket.send({ data: contentBuf })
                    console.info(TAG, "json: " + result);


                  }).catch((error: BusinessError) => {
                    console.error("getRawFileContent promise error is " + JSON.stringify(error));
                  });

                } catch (error) {
                  let code = (error as BusinessError).code;
                  let message = (error as BusinessError).message;
                  console.error(`promise getRawFileContent failed, error code: ${code}, message: ${message}.`);
                }
              }
            }, delayMillis);
          } else {
            if(path.endsWith("html") || path.endsWith("htm") || path.endsWith("json") || path.endsWith("css") ||
            path.endsWith("xml") || path.endsWith("js") || path.endsWith("txt")) {
              try {
                getContext(this).resourceManager.getRawFileContent(path).then((value: Uint8Array) => {
                  console.log('value:', value);
                  if (value.length === 0) {
                    console.error("The file content is empty.");
                    return;
                  }

                  let ext:string = path.split(".")[1];
                  let decoder = util.TextDecoder.create('utf-8');
                  let resp = decoder.decodeToString(value);
                  let result = "";
                  result += "HTTP/1.1 200 OK \r\n"
                  result += "Content-Type: text/" +ext+ "; charset=utf-8 \r\n"
                  if (!hasQueryParams || query.indexOf(NOLENGTH_POSTFIX) < 0) {
                    result += `Content-Length: ${resp.length} \r\n`
                  }
                  result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                  result += "\r\n"
                  result += resp;

                  clientSocket.send({ data: result })
                  console.info(TAG, "json: " + result);


                }).catch((error: BusinessError) => {
                  console.error("getRawFileContent promise error is " + JSON.stringify(error));
                });
              } catch (error) {
                let code = (error as BusinessError).code;
                let message = (error as BusinessError).message;
                console.error(`promise getRawFileContent failed, error code: ${code}, message: ${message}.`);
              }
            } else {
              try{
                getContext(this).resourceManager.getRawFile(path).then((value: Uint8Array) => {
                  console.log('value:', value);
                  if (value.length === 0) {
                    console.error("The file content is empty.");
                    return;
                  }

                  const base64 = buffer.from(value).toString("base64");
                  const imageData = `data:image/png;base64,${base64}`;

                  let contentBuf = this.buildRespString(imageData)
                  let result = "";
                  result += "HTTP/1.1 200 OK \r\n"
                  result += "Content-Type: text/html; charset=utf-8 \r\n"
                  result += `Content-Length: ${contentBuf.length} \r\n`
                  result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                  result += "\r\n"
                  result += contentBuf;

                  clientSocket.send({ data: contentBuf })
                  console.info(TAG, "json: " + result);


                }).catch((error: BusinessError) => {
                  console.error("getRawFileContent promise error is " + JSON.stringify(error));
                });

              } catch (error) {
                let code = (error as BusinessError).code;
                let message = (error as BusinessError).message;
                console.error(`promise getRawFileContent failed, error code: ${code}, message: ${message}.`);
              }
            }
          }


        } else if (path.startsWith(REDIRECT_PREFIX)) {
          this.rCount++;
          let location:string = this.getBaseUri() + path.substring(REDIRECT_PREFIX.length);
          let page:string = "";
          let result = "";
          if (this.rCount === 1) {
            page = this.createPage("Moved Permanently", "Moved Permanently");
            result += "HTTP/1.1 301 Moved Permanently \r\n"
          } else {
            page = this.createPage("Moved Temporarily", "Moved Temporarily");
            result += "HTTP/1.1 302 Moved Temporarily \r\n";
          }
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          result += "Content-Type: text/html; charset=utf-8 \r\n"
          result += "Location: " + location +" \r\n"
          result += `Content-Length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send({ data: result })
          console.info(TAG, "json: " + result);
        } else if (path.startsWith(QUERY_REDIRECT_PATH)) {

        } else if (path.startsWith(COOKIE_PREFIX)) {
          let countMatch = cookie.match(new RegExp('count=(\\d+)'));
          let count = countMatch ? parseInt(countMatch[1], 10) +1 : 0;
          let page:string = this.createPage(cookie.length.toString(), cookie)
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: text/html; charset=utf-8 \r\n"
          result += `Content-Length: ${contentBuf.length} \r\n`
          result += `Set-Cookie: count=` +count+`; path=` +COOKIE_PREFIX+ `\r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send({ data: result })
          console.info(TAG, "json: " + result);

        } else if (path.startsWith(SET_COOKIE_PREFIX)) {
          let key:string = "";
          let value:string = "";
          let attributes:string = "";
          let nvPairArr:string[] = query.split("&");
          for (let i=0;i<nvPairArr.length;i++) {
            let nvPair:string = nvPairArr[i];
            if (nvPair.startsWith("key")) {
              key = nvPair.split("=")[1];
            } else if(nvPair.startsWith("value")) {
              value = nvPair.split("=")[1];
            } else if(nvPair.startsWith("attributes")) {
              attributes = nvPair.split("=")[1];
            }
          }
          let c0okie:string = key + "=" + value;
          if (attributes.length > 0) {
            c0okie = c0okie + ";" + attributes;
          }
          let page:string = this.createPage(c0okie, c0okie)
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: text/html; charset=utf-8 \r\n"
          result += `Content-Length: ${contentBuf.length} \r\n`
          result += `Set-Cookie:` +c0okie+ `\r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send({ data: result })
          console.info(TAG, "json: " + result);

        } else if (path.startsWith(LINKED_SCRIPT_PREFIX)) {
          let src:string = "";
          let nvPairArr:string[] = query.split("&");
          for (let i=0;i<nvPairArr.length;i++) {
            let nvPair:string = nvPairArr[i];
            if (nvPair.startsWith("url")) {
              src = nvPair.split("=")[1];
            }
          }
          let scriptTag:string = `<script src="${src}"><script>`;
          let page:string = this.createPage("LinkedScript", scriptTag)
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: text/html; charset=utf-8 \r\n"
          result += `Content-Length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send({ data: result })
          console.info(TAG, "json: " + result);

        } else if (path.startsWith(USERAGENT_PATH)) {
          let page:string = this.createPage(ua, ua)
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: text/html; charset=utf-8 \r\n"
          result += `Content-Length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send({ data: result })
          console.info(TAG, "json: " + result);

        } else if (path.startsWith(TEST_DOWNLOAD_PATH)) {
          let downloadId:string = "";
          let numBytes:number = 0;
          let nvPairArr:string[] = query.split("&");
          for (let i=0;i<nvPairArr.length;i++) {
            let nvPair:string = nvPairArr[i];
            if (nvPair.startsWith(DOWNLOAD_ID_PARAMETER)) {
              downloadId = nvPair.split("=")[1];
            } else if(nvPair.startsWith(NUM_BYTES_PARAMETER)) {
              numBytes = parseInt(nvPair.split("=")[1]);
            }
          }
          let dir:string = getContext(this).filesDir + "/";
          let filePath:string = dir + downloadId + ".bin";
          try {
            sleep(1000);
            let result = "";
            if (rangeBytes.length > 0) {
              result += "HTTP/1.1 206 Partial Content \r\n"
              result += `Content-Disposition: attachment; filename=${downloadId}.bin \r\n`
              result += "Content-Type: application/octet-stream; charset=utf-8 \r\n"
              result += `Content-Range: bytes ` +rangeBytes+ `-`+(numBytes-1)+ `/`+numBytes+` \r\n`
              result += `Content-Length: ` +(numBytes-parseInt(rangeBytes))+ ` \r\n`
              result += `Accept-Ranges: bytes \r\n`
              result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
              result += "\r\n"
              result += buffer.alloc(numBytes-parseInt(rangeBytes), 1).toString();
            } else {
              result += "HTTP/1.1 200 OK \r\n"
              result += `Content-Disposition: attachment; filename=${downloadId}.bin \r\n`
              result += "Content-Type: application/octet-stream; charset=utf-8 \r\n"
              result += `Content-Length: ` +numBytes+ ` \r\n`
              result += `Accept-Ranges: bytes \r\n`
              result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
              result += "\r\n"
              result += buffer.alloc(numBytes, 1).toString();
            }
            clientSocket.send({ data: result })
            console.info(TAG, "json: " + result);
          } catch (error) {
            // fall through , return 404 at the end
          }
        } else if (path.startsWith(RANGE_DOWNLOAD_PATH)) {
          let downloadId:string = "";
          let numBytes:number = 0;
          let chunkSize:number = 0;
          let delayMillis:number = 0;
          let nvArr:string[] = query.split("&");
          for (let i=0;i<nvArr.length;i++) {
            let nvPair:string = nvArr[i];
            if (nvPair.startsWith(DOWNLOAD_ID_PARAMETER)) {
              downloadId = nvPair.split("=")[1];
            } else if(nvPair.startsWith(NUM_BYTES_PARAMETER)) {
              numBytes = parseInt(nvPair.split("=")[1]);
            } else if(nvPair.startsWith(CHUNK_SIZE_PARAMETER)) {
              chunkSize = parseInt(nvPair.split("=")[1]);
            } else if(nvPair.startsWith(DELAY_MILLS_PARAMETER)) {
              delayMillis = parseInt(nvPair.split("=")[1]);
            }
          }
          let dir:string = getContext(this).filesDir + "/";
          let filePath:string = dir + downloadId + ".bin";
          try {
            let result = "";
            result += "HTTP/1.1 200 OK \r\n"
            result += `Content-Disposition: attachment; filename=${downloadId}.bin \r\n`
            result += "Content-Type: application/octet-stream; charset=utf-8 \r\n"
            result += `Accept-Ranges: bytes \r\n`
            result += `Content-Length: ` +numBytes+ ` \r\n`
            result += `Connection: keep-alive \r\n\r\n`
            result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);

            clientSocket.send({ data: result })
            console.info(TAG, "json: " + result);

            let wBytes:number = 0;
            while(wBytes <= numBytes) {
              let tbytes:number = wBytes + chunkSize;
              wBytes += chunkSize;
              if (tbytes > numBytes) {
                let lbytes = chunkSize - (tbytes - numBytes);
                let result = "";
                result += buffer.alloc(lbytes, 1).toString();
                clientSocket.send({ data: result })
                await sleep(delayMillis);

              } else {
                let result = "";
                result += buffer.alloc(chunkSize, 1).toString();

                clientSocket.send({ data: result })
                console.info(TAG, "json: " + result);
                await sleep(delayMillis);
              }

            }
            console.log(`[copyRawFileToSandbox] ${path} is copy success`);
            console.info("[copyRawFileToSandbox] sandbox path:" + getContext(this).filesDir);
          } catch (error) {
            // fall through , return 404 at the end
          }

        } else if (path.startsWith(CACHEABLE_TEST_DOWNLOAD_PATH)) {

        } else if (path.startsWith(APPCACHE_PATH)) {
          let page:string = this.createAppcachePage();
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: text/html; charset=utf-8 \r\n"
          result += `Content-Length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send({ data: result })
          console.info(TAG, "json: " + result);

        } else if (path.startsWith(APPCACHE_MANIFEST_PATH)) {
          let page:string = "CACHE MANIFEST";
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: text/cache-manifest; charset=utf-8 \r\n"
          result += `Content-Length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send({ data: result })
          console.info(TAG, "json: " + result);
        } else if (path.startsWith(SHUTDOWN)) {
          let result:string = "";
          result += "HTTP/1.1 200 OK \r\n"
          result += "Content-Type: txt/html; charset=utf-8 \r\n"
          result += `Content-Length: 0 \r\n`
          result += "\r\n"
          result += "";
          clientSocket.send({ data: result })
          console.info(TAG, "json: " + result);
          this.tcpServer.off("connect");
          clientSocket.close();
        }
      })
    });
  }

  startHttps() {
    this.webUrl = "https://127.0.0.1:" + this.httpsPort.toString()
    let netAddress: socket.NetAddress = {
      address: '0.0.0.0',
      port: this.httpsPort,
      family: 1
    }

    // read cert file
    let serverCert: string = "";
    let serverKey: string = "";
    const certBuf  =getContext(this).resourceManager.getRawFileContentSync("server.crt");
    serverCert = buffer.from(certBuf).toString("utf8");
    const keyBuf = getContext(this).resourceManager.getRawFileContentSync("server.key");
    serverKey = buffer.from(keyBuf).toString("utf8");
    let tlsSecureOptions: socket.TLSSecureOptions = {
      cert: serverCert,
      key: serverKey,
      // ca: ["2x*gom3swk"],
      // password: "123456",
      protocols: socket.Protocol.TLSv12 //,
      // useRemoteCipherPrefer: true,
      // signatureAlgorithms: "rsa_pss_rsae_sha256:ECDSA+SHA256",
      // cipherSuite: "AES256-SHA256"
    }

    let tlsConnectOptions: socket.TLSConnectOptions = {
      address: netAddress,
      secureOptions: tlsSecureOptions,
      ALPNProtocols: ["spdy/1", "http/1.1", "h2"]
    }
    this.tlsServer.listen(tlsConnectOptions, (err: BusinessError) => {
      if (err) {
        this.webUrl += "listen fail \r\n";
            console.log(TAG, this.webUrl)
        return;
      }
      this.webUrl += "listen success \r\n";
          console.log(TAG, this.webUrl)
    })

    setTimeout(()=>{
      // to do
    }, 1500)

    this.tlsServer.on('connect', (clientSocket: socket.TLSSocketConnection) => {
      this.csSocket = clientSocket;
      console.log(TAG, " on connect "+this.csSocket.clientId)
      clientSocket.on('message', async (msgInfo: socket.SocketMessageInfo)  =>  {
        let requestMsg = buf2String(new Uint8Array(msgInfo.message));
        console.info(TAG, "json: " + requestMsg);
        let rqArr:string[] = requestMsg.split("\r\n");
        let requestLine:string[] = rqArr[0].split(" ");
        let cookie:string = "";
        let auth:string = "";
        let ua:string = "";
        let delayMillis:number = 0;
        let rangeBytes = "";
        for (let i=0;i<rqArr.length;i++) {
          let reqline:string = rqArr[i];
          if (reqline.startsWith("User-Agent")) {
            ua = reqline.split(":")[1];
          } else if (reqline.startsWith("Authorization")) {
            auth = reqline.split(":")[1];
          } else if (reqline.startsWith("Cookie")) {
            cookie = reqline.split(":")[1];
          } else if (reqline.startsWith("Range") || reqline.startsWith("range")) {
            let bs:string = reqline.split(":")[1].trim();
            rangeBytes = bs.replace("bytes=", "").split("-")[0];
          }
        }
        if(requestLine[0] == "POST") {
          this.postDataArr.push(rqArr[rqArr.length-1]);
          let page = this.createPage("Post test", "Post test");
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result:string = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: txt/html; charset=utf-8 \r\n"
          result += `content-length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;
          clientSocket.send(result)
          console.info(TAG, "json: " + result);
        } else if (requestLine[0] == "PUT") {
          let result:string = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: txt/html; charset=utf-8 \r\n"
          result += `content-length: 0 \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += "";
          clientSocket.send(result)
        } else if (requestLine[0] == "DELETE") {
          let result:string = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: txt/html; charset=utf-8 \r\n"
          result += `content-length: 0 \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += "";
          clientSocket.send(result)
        }
        let path = requestLine[1];
        this.reqArr.push(this.mServerUri + path);
        let hasQueryParams:boolean = false;
        let query:string = "";
        if (path.indexOf("?") > 0) {
          hasQueryParams = true;
          let ps:string[] = path.split("?");
          path = ps[0];
          query = ps[1];
        }

        if (path.startsWith(ECHO_HEADERS_PREFIX)) {

        }

        if (path.startsWith(FAVICON_PATH)) {
          path = FAVICON_ASSET_PATH;
        }

        if (path.startsWith(DELAY_PREFIX)) {
          let delayPath:string = path.substring(DELAY_PREFIX.length + 1);
          let delay:string = delayPath.substring(0, delayPath.indexOf('/'));
          path = delayPath.substring(delay.length);
          try {
            delayMillis = parseInt(delay);
            await sleep(delayMillis);
          } catch (error) {
            // ignore
          }
        }

        if (path.startsWith(AUTH_PREFIX)) {
          if ((auth.length > 0 && auth === AUTH_CREDENTIALS) && !path.endsWith("embedded_image.html")) {
            path = path.substring(AUTH_PREFIX.length);
          } else {
            let page:string = this.createPage("Unauthorized", "Unauthorized")
            let textEncoder = new util.TextEncoder();
            let contentBuf = textEncoder.encodeInto(page);
            let result = "";
            result += "HTTP/2 401 Unauthorized \r\n"
            result += "content-type: text/html; charset=utf-8 \r\n"
            result += `content-length: ${contentBuf.length} \r\n`
            result += "www-authenticate: Basic realm=" + AUTH_REALM +" \r\n"
            result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
            result += "\r\n"
            result += page;

            clientSocket.send(result)
            console.info(TAG, "json: " + result);
          }
        }

        if (path.startsWith(BINARY_PREFIX)) {
          let mimeType:string = "";
          let length:number = 0;
          try {
            let nvPairArr:string[] = query.split("&");
            for (let i=0;i<nvPairArr.length;i++) {
              let nvPair:string = nvPairArr[i];
              if (nvPair.startsWith("type")) {
                mimeType = nvPair.split("=")[1];
              } else if(nvPair.startsWith("length")) {
                length = parseInt(nvPair.split("=")[1]);
              }
            }
            if (length > 0 && mimeType.length > 0) {
              let result = "";
              if (rangeBytes.length > 0) {
                result += "HTTP/2 206 Partial Content \r\n"
                result += `content-disposition: attachment; filename=test.bin \r\n`
                result += "content-type: " +mimeType+ "; charset=utf-8 \r\n"
                result += `content-range: bytes ` +rangeBytes+ `-`+(length-1)+ `/`+length+` \r\n`
                result += `content-length: ` +(length-parseInt(rangeBytes))+ ` \r\n`
                result += `accept-ranges: bytes \r\n`
                result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                result += "\r\n"
                result += buffer.alloc(length-parseInt(rangeBytes), 1).toString();
              } else {
                result += "HTTP/2 200 OK \r\n"
                result += "content-disposition: attachment; filename=test.bin \r\n"
                result += "content-type: " +mimeType+ "; charset=utf-8 \r\n"
                result += `content-length: ` +length+ ` \r\n`
                result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                result += "\r\n"
                result += buffer.alloc(length, 1).toString();
              }

              clientSocket.send(result)
              console.info(TAG, "json: " + result);

            } else {
              // fall through , return 404 at the end
            }
          } catch (error) {
            // fall through , return 404 at the end
          }
        } else if (path.startsWith(ASSET_PREFIX)) {
          path = path.substring(ASSET_PREFIX.length);
          if (delayMillis > 0) {
            setTimeout(() => {
              if(path.endsWith("html") || path.endsWith("htm") || path.endsWith("json") || path.endsWith("css") ||
              path.endsWith("xml") || path.endsWith("js") || path.endsWith("txt")) {
                try {
                  // sleep(2000);
                  getContext(this).resourceManager.getRawFileContent(path).then((value: Uint8Array) => {
                    console.log('value:', value);
                    if (value.length === 0) {
                      console.error("The file content is empty.");
                      return;
                    }

                    let ext:string = path.split(".")[1];
                    let decoder = util.TextDecoder.create('utf-8');
                    let resp = decoder.decodeToString(value);
                    let result = "";
                    result += "HTTP/2 200 OK \r\n"
                    result += "content-type: text/" +ext+ "; charset=utf-8 \r\n"
                    if (!hasQueryParams || query.indexOf(NOLENGTH_POSTFIX) < 0) {
                      result += `content-length: ${resp.length} \r\n`
                    }
                    result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                    result += "\r\n"
                    result += resp;

                    clientSocket.send(result)
                    console.info(TAG, "json: " + result);


                  }).catch((error: BusinessError) => {
                    console.error("getRawFileContent promise error is " + JSON.stringify(error));
                  });
                } catch (error) {
                  let code = (error as BusinessError).code;
                  let message = (error as BusinessError).message;
                  console.error(`promise getRawFileContent failed, error code: ${code}, message: ${message}.`);
                }
              } else {
                try{
                  getContext(this).resourceManager.getRawFile(path).then((value: Uint8Array) => {
                    console.log('value:', value);
                    if (value.length === 0) {
                      console.error("The file content is empty.");
                      return;
                    }

                    const base64 = buffer.from(value).toString("base64");
                    const imageData = `data:image/png;base64,${base64}`;

                    let contentBuf = this.buildRespString(imageData)
                    let result = "";
                    result += "HTTP/2 200 OK \r\n"
                    result += "content-type: text/html; charset=utf-8 \r\n"
                    result += `content-length: ${contentBuf.length} \r\n`
                    result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                    result += "\r\n"
                    result += contentBuf;

                    clientSocket.send(result)
                    console.info(TAG, "json: " + result);


                  }).catch((error: BusinessError) => {
                    console.error("getRawFileContent promise error is " + JSON.stringify(error));
                  });

                } catch (error) {
                  let code = (error as BusinessError).code;
                  let message = (error as BusinessError).message;
                  console.error(`promise getRawFileContent failed, error code: ${code}, message: ${message}.`);
                }
              }
            }, delayMillis)
          } else {
            if(path.endsWith("html") || path.endsWith("htm") || path.endsWith("json") || path.endsWith("css") ||
            path.endsWith("xml") || path.endsWith("js") || path.endsWith("txt")) {
              try {
                getContext(this).resourceManager.getRawFileContent(path).then((value: Uint8Array) => {
                  console.log('value:', value);
                  if (value.length === 0) {
                    console.error("The file content is empty.");
                    return;
                  }

                  let ext:string = path.split(".")[1];
                  let decoder = util.TextDecoder.create('utf-8');
                  let resp = decoder.decodeToString(value);
                  let result = "";
                  result += "HTTP/2 200 OK \r\n"
                  result += "content-type: text/" +ext+ "; charset=utf-8 \r\n"
                  if (!hasQueryParams || query.indexOf(NOLENGTH_POSTFIX) < 0) {
                    result += `content-length: ${resp.length} \r\n`
                  }
                  result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                  result += "\r\n"
                  result += resp;

                  clientSocket.send(result)
                  console.info(TAG, "json: " + result);


                }).catch((error: BusinessError) => {
                  console.error("getRawFileContent promise error is " + JSON.stringify(error));
                });
              } catch (error) {
                let code = (error as BusinessError).code;
                let message = (error as BusinessError).message;
                console.error(`promise getRawFileContent failed, error code: ${code}, message: ${message}.`);
              }
            } else {
              try{
                getContext(this).resourceManager.getRawFile(path).then((value: Uint8Array) => {
                  console.log('value:', value);
                  if (value.length === 0) {
                    console.error("The file content is empty.");
                    return;
                  }

                  const base64 = buffer.from(value).toString("base64");
                  const imageData = `data:image/png;base64,${base64}`;

                  let contentBuf = this.buildRespString(imageData)
                  let result = "";
                  result += "HTTP/2 200 OK \r\n"
                  result += "content-type: text/html; charset=utf-8 \r\n"
                  result += `content-length: ${contentBuf.length} \r\n`
                  result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
                  result += "\r\n"
                  result += contentBuf;

                  clientSocket.send(result)
                  console.info(TAG, "json: " + result);


                }).catch((error: BusinessError) => {
                  console.error("getRawFileContent promise error is " + JSON.stringify(error));
                });

              } catch (error) {
                let code = (error as BusinessError).code;
                let message = (error as BusinessError).message;
                console.error(`promise getRawFileContent failed, error code: ${code}, message: ${message}.`);
              }
            }
          }


        } else if (path.startsWith(REDIRECT_PREFIX)) {
          let location:string = this.getBaseUri() + path.substring(REDIRECT_PREFIX.length);
          let page:string = this.createPage("Moved Temporarily", "Moved Temporarily")
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/2 302 Moved Temporarily \r\n"
          result += "content-type: text/html; charset=utf-8 \r\n"
          result += "location: " + location +" \r\n"
          result += `content-length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send(result)
          console.info(TAG, "json: " + result);
        } else if (path.startsWith(QUERY_REDIRECT_PATH)) {

        } else if (path.startsWith(COOKIE_PREFIX)) {
          //let countMatch = cookie.match(/count=(\d+)/);
          let countMatch = cookie.match(new RegExp('count=(\\d+)'));
          let count = countMatch ? parseInt(countMatch[1], 10) +1 : 0;
          let page:string = this.createPage(cookie.length.toString(), cookie)
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: text/html; charset=utf-8 \r\n"
          result += `content-length: ${contentBuf.length} \r\n`
          result += `set-cookie: count=` +count+`; path=` +COOKIE_PREFIX+ `\r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send(result)
          console.info(TAG, "json: " + result);
        } else if (path.startsWith(SET_COOKIE_PREFIX)) {
          let key:string = "";
          let value:string = "";
          let attributes:string = "";
          let nvPairArr:string[] = query.split("&");
          for (let i=0;i<nvPairArr.length;i++) {
            let nvPair:string = nvPairArr[i];
            if (nvPair.startsWith("key")) {
              key = nvPair.split("=")[1];
            } else if(nvPair.startsWith("value")) {
              value = nvPair.split("=")[1];
            } else if(nvPair.startsWith("attributes")) {
              attributes = nvPair.split("=")[1];
            }
          }
          let c0okie:string = key + "=" + value;
          if (attributes.length > 0) {
            c0okie = c0okie + ";" + attributes;
          }
          let page:string = this.createPage(c0okie, c0okie)
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: text/html; charset=utf-8 \r\n"
          result += `content-length: ${contentBuf.length} \r\n`
          result += `set-cookie:` +c0okie+ `\r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send(result)
          console.info(TAG, "json: " + result);

        } else if (path.startsWith(LINKED_SCRIPT_PREFIX)) {
          let src:string = "";
          let nvPairArr:string[] = query.split("&");
          for (let i=0;i<nvPairArr.length;i++) {
            let nvPair:string = nvPairArr[i];
            if (nvPair.startsWith("url")) {
              src = nvPair.split("=")[1];
            }
          }
          let scriptTag:string = `<script src="${src}"><script>`;
          let page:string = this.createPage("LinkedScript", scriptTag)
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: text/html; charset=utf-8 \r\n"
          result += `content-length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send(result)
          console.info(TAG, "json: " + result);

        } else if (path.startsWith(USERAGENT_PATH)) {
          let page:string = this.createPage(ua, ua)
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: text/html; charset=utf-8 \r\n"
          result += `content-length: ${contentBuf.length} \r\n`
          result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send(result)
          console.info(TAG, "json: " + result);

        } else if (path.startsWith(TEST_DOWNLOAD_PATH)) {
          let downloadId:string = "";
          let numBytes:number = 0;
          let nvPairArr:string[] = query.split("&");
          for (let i=0;i<nvPairArr.length;i++) {
            let nvPair:string = nvPairArr[i];
            if (nvPair.startsWith(DOWNLOAD_ID_PARAMETER)) {
              downloadId = nvPair.split("=")[1];
            } else if(nvPair.startsWith(NUM_BYTES_PARAMETER)) {
              numBytes = parseInt(nvPair.split("=")[1]);
            }
          }
          let dir:string = getContext(this).filesDir + "/";
          let filePath:string = dir + downloadId + ".bin";
          try {
            let file = fs.openSync(filePath, fs.OpenMode.READ_WRITE | fs.OpenMode.CREATE);
            fs.writeSync(file.fd, buffer.alloc(numBytes, 1).buffer);
            fs.closeSync(file);
            console.log(`[copyRawFileToSandbox] ${path} is copy success`);
            console.info("[copyRawFileToSandbox] sandbox path:" + getContext(this).filesDir);
            let result = "";
            if (rangeBytes.length > 0) {
              result += "HTTP/2 206 Partial Content \r\n"
              result += `content-disposition: attachment; filename=${downloadId}.bin \r\n`
              result += "content-type: application/octet-stream; charset=UTF-8 \r\n"
              result += `content-range: bytes ` +rangeBytes+ `-`+(numBytes-1)+ `/`+numBytes+` \r\n`
              result += `content-length: ` +(numBytes-parseInt(rangeBytes))+ ` \r\n`
              result += `accept-ranges: bytes \r\n`
              result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
              result += "\r\n"
              result += buffer.alloc(numBytes-parseInt(rangeBytes), 1).toString();
            } else {
              result += "HTTP/2 200 OK \r\n"
              result += `content-disposition: attachment; filename=${downloadId}.bin \r\n`
              result += "content-type: application/octet-stream; charset=UTF-8 \r\n"
              result += `content-length: ` +numBytes+ ` \r\n`
              result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
              result += "\r\n"
              result += buffer.alloc(numBytes, 1).toString();
            }

            clientSocket.send(result)
            console.info(TAG, "json: " + result);
          } catch (error) {
            // fall through , return 404 at the end
          }

        } else if (path.startsWith(RANGE_DOWNLOAD_PATH)) {
          let downloadId:string = "";
          let numBytes:number = 0;
          let chunkSize:number = 0;
          let delayMillis:number = 0;
          let nvArr:string[] = query.split("&");
          for (let i=0;i<nvArr.length;i++) {
            let nvPair:string = nvArr[i];
            if (nvPair.startsWith(DOWNLOAD_ID_PARAMETER)) {
              downloadId = nvPair.split("=")[1];
            } else if(nvPair.startsWith(NUM_BYTES_PARAMETER)) {
              numBytes = parseInt(nvPair.split("=")[1]);
            } else if(nvPair.startsWith(CHUNK_SIZE_PARAMETER)) {
              chunkSize = parseInt(nvPair.split("=")[1]);
            } else if(nvPair.startsWith(DELAY_MILLS_PARAMETER)) {
              delayMillis = parseInt(nvPair.split("=")[1]);
            }
          }
          let dir:string = getContext(this).filesDir + "/";
          let filePath:string = dir + downloadId + ".bin";
          try {
            let result = "";
            result += "HTTP/2 200 OK \r\n"
            result += `Content-Disposition: attachment; filename=${downloadId}.bin \r\n`
            result += "Content-Type: application/octet-stream; charset=utf-8 \r\n"
            result += `Accept-Ranges: bytes \r\n`
            result += `Content-Length: ` +numBytes+ ` \r\n`
            result += `Connection: keep-alive \r\n\r\n`
            result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);

            clientSocket.send(result)
            console.info(TAG, "json: " + result);

            let wBytes:number = 0;
            while(wBytes <= numBytes) {
              let tbytes:number = wBytes + chunkSize;
              wBytes += chunkSize;
              if (tbytes > numBytes) {
                let lbytes = chunkSize - (tbytes - numBytes);
                let result = "";
                result += buffer.alloc(lbytes, 1).toString();
                clientSocket.send(result)
                await sleep(delayMillis);

              } else {
                let result = "";
                result += buffer.alloc(chunkSize, 1).toString();

                clientSocket.send(result)
                console.info(TAG, "json: " + result);
                await sleep(delayMillis);
              }

            }
            console.log(`[copyRawFileToSandbox] ${path} is copy success`);
            console.info("[copyRawFileToSandbox] sandbox path:" + getContext(this).filesDir);
          } catch (error) {
            // fall through , return 404 at the end
          }

        } else if (path.startsWith(CACHEABLE_TEST_DOWNLOAD_PATH)) {

        } else if (path.startsWith(APPCACHE_PATH)) {
          let page:string = this.createAppcachePage();
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: text/html; charset=utf-8 \r\n"
          result += `content-length: ${contentBuf.length} \r\n`
          result = result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send(result)
          console.info(TAG, "json: " + result);
        } else if (path.startsWith(APPCACHE_MANIFEST_PATH)) {
          let page:string = "CACHE MANIFEST";
          let textEncoder = new util.TextEncoder();
          let contentBuf = textEncoder.encodeInto(page);
          let result = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: text/cache-manifest; charset=utf-8 \r\n"
          result += `content-length: ${contentBuf.length} \r\n`
          result = result = this.setDateHeaders(this.mDocValidity, this.mDocAge, result);
          result += "\r\n"
          result += page;

          clientSocket.send(result)
          console.info(TAG, "json: " + result);
        } else if(path.startsWith(SHUTDOWN)) {
          let result:string = "";
          result += "HTTP/2 200 OK \r\n"
          result += "content-type: txt/html; charset=utf-8 \r\n"
          result += `content-length: 0 \r\n`
          result += "\r\n"
          result += "";
          clientSocket.send(result)
          console.info(TAG, "json: " + result);
          this.tlsServer.off("connect");
          clientSocket.close();
        }
      })
    });
  }

  setDateHeaders(mDocValidity:number, mDocAge:number, result:string):string {
    let now = new Date();
    if (this.mSsl) {
      result += `date: ${formatDate(now)} \r\n`
    } else {
      result += `Date: ${formatDate(now)} \r\n`
    }
    if (mDocValidity !== undefined && mDocValidity > 0) {
      let expires = new Date(now.getTime() + this.mDocValidity);
      if (this.mSsl) {
        result += `expires: ${formatDate(expires)} \r\n`
      } else {
        result += `Expires: ${formatDate(expires)} \r\n`
      }
    }
    if (mDocAge !== undefined && mDocAge > 0) {
      let modified = new Date(now.getTime() - this.mDocAge);
      if (this.mSsl) {
        result += `last-modified: ${formatDate(modified)} \r\n`
      } else {
        result += `Last-Modified: ${formatDate(modified)} \r\n`
      }

    }
    return result;
  }

  createPage(title:string, bodyContent:string):string {
    return "<html><head><title>" + title + "</title></head>" +
      "<body>" + bodyContent + "</body></html>";
  }

  createAppcachePage() {
    let html:string = "<!DOCTYPE HTML>" +
      "<html manifest=\"appcache.manifest\">" +
      "  <head>" +
      "    <title>Waiting</title>" +
      "    <script>" +
      "      function updateTitle(x) { document.title = x; }" +
      "      window.applicationCache.onnoupdate = " +
      "          function() { updateTitle(\"onnoupdate Callback\"); };" +
      "      window.applicationCache.oncached = " +
      "          function() { updateTitle(\"oncached Callback\"); };" +
      "      window.applicationCache.onupdateready = " +
      "          function() { updateTitle(\"onupdateready Callback\"); };" +
      "      window.applicationCache.onobsolete = " +
      "          function() { updateTitle(\"onobsolete Callback\"); };" +
      "      window.applicationCache.onerror = " +
      "          function() { updateTitle(\"onerror Callback\"); };" +
      "    </script>" +
      "  </head>" +
      "  <body onload=\"updateTitle('Loaded');\">AppCache test</body>" +
      "</html>";
    return html;
  }

  buildRespString(imgData: string) {
    let result: string = ""
    let bodyContent = "<html>"
    bodyContent += "<head>"
    bodyContent += "<title>"
    bodyContent += "</title>"
    bodyContent += "</head>"
    bodyContent += "<body>"
    bodyContent += "<img src=" + imgData+ ">"
    bodyContent += "</body>"
    bodyContent += "</html>"

    let textEncoder = new util.TextEncoder();
    let contentBuf = textEncoder.encodeInto(bodyContent)

    result += "HTTP/1.1 200 OK \r\n"
    result += "Content-Type: text/html; charset=utf-8 \r\n"
    result += `Content-Length: ${contentBuf.length} \r\n`
    result += "\r\n"
    result += bodyContent

    return result
  }

  createResponse(htmlString:string) {
    let result:string = "";
    let textEncoder = new util.TextEncoder();
    let contentBuf = textEncoder.encodeInto(htmlString)

    result += "HTTP/1.1 200 OK \r\n"
    result += "Content-Type: text/html; charset=utf-8 \r\n"
    result += `Content-Length: ${contentBuf.length} \r\n`
    result += "\r\n"
    result += htmlString
    return result;
  }

  createTestDownloadResponse(downloadId:number) {

    let result:string = "";
    let textEncoder = new util.TextEncoder();
    let contentBuf = textEncoder.encodeInto(downloadId + "")

    result += "HTTP/1.1 200 OK \r\n"
    result += "Content-Type: text/html; charset=utf-8 \r\n"
    result += `Content-Length: ${contentBuf.length} \r\n`
    result += "\r\n"
    result += downloadId
    return result;
  }

  static createPage(title:string, bodyContent:string) {

  }

  onPost() {
    return null;
  }

  shutdown() {
    let result:string = "";
    result += "HTTP/1.1 200 OK \r\n"
    result += "Content-Type: txt/html; charset=utf-8 \r\n"
    result += `Content-Length: 0 \r\n`
    result += "\r\n"
    result += "";
    this.cSocket.send({ data: result })
    this.tcpServer.off("connect");
    this.cSocket.close();
  }
}

//ArrayBuffer to utf8 string
function buf2String(buf: Uint8Array) {
  let textDecoder = util.TextDecoder.create("utf-8");
  return textDecoder.decodeWithStream(buf)
}

function formatDate(date:Date) {
  return date.toUTCString();
}

async function sleep(ms: number):Promise<void> {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve();
    }, ms);
  });
}

export class ServerThread {

  constructor(path:string) {

  }

  start() {

  }
}