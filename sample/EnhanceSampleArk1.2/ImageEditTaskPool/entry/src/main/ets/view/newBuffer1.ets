'use static'
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

let Workers: ESObject;
let taskNum: int = 1;
let allocation: int = 1
let index: int = 0
let messages: number[];
let n: int = 0;
let curTaskNum: int = 2
let that = this

function test() {
  // [Start buffer_test]
  let num: int = 0; // Number of tasks processed
  let newBuffers: ArrayBuffer[] = [];
  for (let i: int = 0; i < taskNum; i++) {
    newBuffers[i] = new ArrayBuffer(0); // Initialize calculation result data of each task
  }
  Workers[index].onmessage = (e: ESObject) => {
    newBuffers[e.data.index] = e.data.buffer; // The main thread receives the calculation result.
    num = num + 1; // Number of tasks completed +1
    if (allocation !== 0) { // If the total task has not been processed, reuse the sub-thread to continue processing the remaining tasks.
      Workers[index].postMessage(messages[n]);
      n += 1;
      allocation = allocation - 1;
    } else if (num === taskNum) {
      for (let i: int = 0; i < curTaskNum; i++) {
        Workers[i].terminate(); // When all tasks are processed, the child thread is destroyed.
      }
      const entireArrayBuffer = mergeArrayBuffers(newBuffers); // Merge all task calculation results
      that.updatePixelMap(entireArrayBuffer); // Refresh the UI according to the calculation result.
    }
  }
  // [End buffer_test]
}

// [Start buffer_test]
// Merge the calculation results of all tasks.
function mergeArrayBuffers(buffers: ArrayBuffer[]) {
  // Calculate the combined total length.
  let totalLength = buffers.reduce((length, buffer) => {
    length += buffer.byteLength;
    return length;
  }, 0);
  // Create a new ArrayBuffer.
  let mergedBuffer = new ArrayBuffer(totalLength);
  // Create a Uint8Array to operate the new ArrayBuffer.
  let mergedArray = new Uint8Array(mergedBuffer);
  // Copy the contents of each ArrayBuffer to the new ArrayBuffer in turn.
  let offset: number = 0;
  for (let buffer of buffers) {
    let array = new Uint8Array(buffer);
    mergedArray.set(array, offset);
    offset += array.length;
  }
  return mergedBuffer;
}

// [End buffer_test]
