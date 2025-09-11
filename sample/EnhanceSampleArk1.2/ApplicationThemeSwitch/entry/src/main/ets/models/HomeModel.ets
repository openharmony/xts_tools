'use static'
/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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

import { Resource } from '@kit.ArkUI';

export class TabTitleModel {
  public id: number;
public uri: Resource;
public selectedUri: Resource;
public title: Resource;
constructor(id: number, uri: Resource, selectedUri: Resource, title: Resource) {
    this.id = id;
    this.uri = uri;
    this.selectedUri = selectedUri;
    this.title = title;
    this.id = id;
    this.uri = uri;
    this.selectedUri = selectedUri;
    this.title = title;
}
}

export class SearchTextModel {
  public searchText: Resource;
constructor(searchText: Resource) {
    this.searchText = searchText;
    this.searchText = searchText;
}
}

export class NavigationDataModel {
  public navigationData: Resource;
public id: number;
constructor(navigationData: Resource, id: number) {
    this.navigationData = navigationData;
    this.id = id;
    this.navigationData = navigationData;
    this.id = id;
}
}

export class SwiperModel {
  public id: number;
public img: Resource;
constructor(id: number, img: Resource) {
    this.id = id;
    this.img = img;
    this.id = id;
    this.img = img;
}
}

export class TitleBarModel {
  public id: number;
public title: Resource;
public content: Resource;
constructor(id: number, title: Resource, content: Resource) {
    this.id = id;
    this.title = title;
    this.content = content;
    this.id = id;
    this.title = title;
    this.content = content;
}
}

export class ProductDataModel {
  public id: number;
public detail: ProductDataDetail;
constructor(id: number, detail: ProductDataDetail) {
    this.id = id;
    this.detail = detail;
    this.id = id;
    this.detail = detail;
}
}

export class ProductDataDetail {
  uri: Resource
  info: Resource
  title: Resource
  labels: Resource
  price: Resource
}

export class GoodResponse {
  code: number
  data: Records
  error: string
}

class Records {
  records: Array<RecordsInfo>
  totalCount: number
}

class RecordsInfo {
  id: number
  detail: RecordDetails
}

class RecordDetails {
  uri: string
  title: string
  info: string
  labels: string
  price: number
}