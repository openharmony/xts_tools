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
import { Core } from './core';
import { ConfigService } from './module/config/configService';
import { AnyType } from './module/types/common';
import { TAG } from './Constant';

export function getAsyncFuncWithArgsZero(func: () => Promise<void>, timeout: int, isStressTest: boolean) {
  return new Promise<void>(async (resolve: (value: PromiseLike<void>) => void, reject: (value: Error) => void) => {
    let timer = 0;
    if (!isStressTest) {
      timer = setTimeout(() => {
        reject(new Error('execute timeout ' + timeout + 'ms'));
      }, timeout);
    }
    try {
      await func();
    } catch (err) {
      err = err as Error;
      console.info(`${TAG} getFuncWithArgsZero Error: ${err.message}`);
      reject(err)
    }
    if (!!timer) {
      clearTimeout(timer);
    }
    resolve(Promise.resolve());
  });
}

export function getFuncWithArgsZero(func: () => void, timeout: int, isStressTest: boolean) {
  return new Promise<void>((resolve: (value: PromiseLike<void>) => void, reject: (value: Error) => void) => {
    let timer = 0;
    if (!isStressTest) {
      timer = setTimeout(() => {
        reject(new Error('execute timeout ' + timeout + 'ms'));
      }, timeout);
    }
    try {
      func()
    } catch (err) {
      err = err as Error;
      console.info(`${TAG} getFuncWithArgsZero Error: ${err.message}`);
      reject(err)
    }
    if (!!timer) {
      clearTimeout(timer);
    }
    resolve(Promise.resolve());
  });
}

export function getAsyncFuncWithArgsOne(
  func: (params: () => void) => Promise<void>,
  timeout: int,
  isStressTest: boolean
) {
  return new Promise<void>(async (resolve: (value: PromiseLike<void>) => void, reject: (reason: Error) => void) => {
    let timer = 0;
    if (!isStressTest) {
      timer = setTimeout(() => {
        reject(new Error('execute timeout ' + timeout + 'ms'));
      }, timeout);
    }

    const done = () => {
      if (!!timer) {
        clearTimeout(timer);
      }
      resolve(Promise.resolve());
    };

    try {
      await func(done);
    } catch (err) {
      if (!!timer) {
        clearTimeout(timer);
      }
      reject(err as Error);
    }
  });
}

export function getFuncWithArgsOne(func: (params: () => void) => void, timeout: int, isStressTest: boolean) {
  return new Promise<void>((resolve: (value: PromiseLike<void>) => void, reject: (reason: Error) => void) => {
    let timer = 0;
    if (!isStressTest) {
      timer = setTimeout(() => {
        reject(new Error('execute timeout ' + timeout + 'ms'));
      }, timeout);
    }

    const done = () => {
      if (!!timer) {
        clearTimeout(timer);
      }
      resolve(Promise.resolve());
    };

    try {
      func(done);
    } catch (err) {
      if (!!timer) {
        clearTimeout(timer);
      }
      reject(err as Error);
    }
  });
}

export function getAsyncFuncWithArgsTwo(
  func: (param1: () => void, param2: AnyType) => Promise<void>,
  timeout: int,
  paramItem: AnyType,
  isStressTest: boolean
) {
  return new Promise<void>(async (resolve: (value: PromiseLike<void>) => void, reject: (reason: Error) => void) => {
    let timer = 0;
    if (!isStressTest) {
      timer = setTimeout(() => {
        reject(new Error('execute timeout ' + timeout + 'ms'));
      }, timeout);
    }

    const done = () => {
      if (!!timer) {
        clearTimeout(timer);
      }
      resolve(Promise.resolve());
    };

    try {
      await func(done, paramItem);
    } catch (err) {
      if (!!timer) {
        clearTimeout(timer);
      }
      reject(err as Error);
    }
  });
}

export function getFuncWithArgsTwo(
  func: (param1: () => void, param2: AnyType) => void,
  timeout: int,
  paramItem: AnyType,
  isStressTest: boolean
) {
  return new Promise<void>((resolve: (value: PromiseLike<void>) => void, reject: (reason: Error) => void) => {
    let timer = 0;
    if (!isStressTest) {
      timer = setTimeout(() => {
        reject(new Error('execute timeout ' + timeout + 'ms'));
      }, timeout);
    }

    const done = () => {
      if (!!timer) {
        clearTimeout(timer);
      }
      resolve(Promise.resolve());
    };

    try {
      func(done, paramItem);
    } catch (err) {
      if (!!timer) {
        clearTimeout(timer);
      }
      reject(err as Error);
    }
  });
}

export function processFunc(
  coreContext: Core,
  func: () => void
) {
  const configService = coreContext.getDefaultService('config');
  if (configService !== null) {
    const config = configService as ConfigService;
    config.setSupportAsync(true);
    const timeout = !config.timeout ? 5000 : Number(config.timeout);
    let isStressTest = false;
    if (config.getStress() > 1 || coreContext.getServices('dataDriver')) {
      isStressTest = true;
    } else {
      isStressTest = false;
    }
    return () => {
      return getFuncWithArgsZero(func, timeout.toInt(), isStressTest);
    };
  }
  return () => {
    return getFuncWithArgsZero(func, 0, false);
  };
}

export function processAsyncFunc(
  coreContext: Core,
  func: (() => Promise<void>)
) {
  const configService = coreContext.getDefaultService('config');
  if (configService !== null) {
    const config = configService as ConfigService;
    config.setSupportAsync(true);
    const timeout = !config.timeout ? 5000 : Number(config.timeout);
    let isStressTest = false;
    if (config.getStress() > 1 || coreContext.getServices('dataDriver')) {
      isStressTest = true;
    } else {
      isStressTest = false;
    }
    return () => {
      return getAsyncFuncWithArgsZero(func, timeout.toInt(), isStressTest);
    };
  }
  return () => {
    return getAsyncFuncWithArgsZero(func, 0, false);
  };
}

export function processAsyncFuncWithArgOne(coreContext: Core, func: (done: () => void) => Promise<void>) {
  const configService = coreContext.getDefaultService('config');
  if (configService !== null) {
    const config = configService as ConfigService;
    config.setSupportAsync(true);
    const timeout = !config.timeout ? 5000 : Number(config.timeout);
    const isStressTest = coreContext.getServices('dataDriver') !== undefined || config.getStress() > 1;
    return () => {
      return getAsyncFuncWithArgsOne(func, timeout.toInt(), isStressTest);
    };
  }
  return () => {
    return getAsyncFuncWithArgsOne(func, 0, false);
  };
}

export function processFuncWithArgOne(coreContext: Core, func: (done: () => void) => void) {
  const configService = coreContext.getDefaultService('config');
  if (configService !== null) {
    const config = configService as ConfigService;
    config.setSupportAsync(true);
    const timeout = !config.timeout ? 5000 : Number(config.timeout);
    const isStressTest = coreContext.getServices('dataDriver') !== undefined || config.getStress() > 1;
    return () => {
      return getFuncWithArgsOne(func, timeout.toInt(), isStressTest);
    };
  }
  return () => {
    return getFuncWithArgsOne(func, 0, false);
  };
}

export function processAsyncFuncWithArgTwo(
  coreContext: Core,
  func: (param1: () => void, param2: AnyType) => Promise<void>
) {
  const configService = coreContext.getDefaultService('config');
  if (configService !== null) {
    const config = configService as ConfigService;
    config.setSupportAsync(true);
    const timeout = !config.timeout ? 5000 : Number(config.timeout);
    const isStressTest = coreContext.getServices('dataDriver') !== undefined || config.getStress() > 1;
    return (paramItem: AnyType) => {
      return getAsyncFuncWithArgsTwo(func, timeout.toInt(), paramItem, isStressTest);
    };
  }
  return (paramItem: AnyType) => {
    return getAsyncFuncWithArgsTwo(func, 0, paramItem, false);
  };
}

export function processFuncWithArgTwo(coreContext: Core, func: (param1: () => void, param2: AnyType) => void) {
  const configService = coreContext.getDefaultService('config');
  if (configService !== null) {
    const config = configService as ConfigService;
    config.setSupportAsync(true);
    const timeout = !config.timeout ? 5000 : Number(config.timeout);
    const isStressTest = coreContext.getServices('dataDriver') !== undefined || config.getStress() > 1;
    return (paramItem: AnyType) => {
      return getFuncWithArgsTwo(func, timeout.toInt(), paramItem, isStressTest);
    };
  }
  return (paramItem: AnyType) => {
    return getFuncWithArgsTwo(func, 0, paramItem, false);
  };
}

export function getFunctionArgumentsCount(fnObj: object): number {
  if (fnObj instanceof Function0) { return 0 }
  if (fnObj instanceof Function1) { return 1 }
  if (fnObj instanceof Function2) { return 2 }
  if (fnObj instanceof Function3) { return 3 }
  if (fnObj instanceof Function4) { return 4 }
  if (fnObj instanceof Function5) { return 5 }
  if (fnObj instanceof Function6) { return 6 }
  if (fnObj instanceof Function7) { return 7 }
  if (fnObj instanceof Function8) { return 8 }
  if (fnObj instanceof Function9) { return 9 }
  if (fnObj instanceof Function10) { return 10 }
  if (fnObj instanceof Function11) { return 11 }
  if (fnObj instanceof Function12) { return 12 }
  if (fnObj instanceof Function13) { return 13 }
  if (fnObj instanceof Function14) { return 14 }
  if (fnObj instanceof Function15) { return 15 }
  if (fnObj instanceof Function16) { return 16 }

  const fnType = Class.of(fnObj)
  const fnTypeName = fnType.getSuper()?.getName()
  throw new AssertionError("unexpected fn type: " + fnTypeName)
}

export function checkIsAsyncFunction(funcStr: string): boolean {
  const endIndex = funcStr.lastIndexOf('):');
  const validStr = funcStr.slice(endIndex);
  if (validStr.indexOf('Promise') !== -1) {
    return true;
  } else {
    return false;
  }
}
