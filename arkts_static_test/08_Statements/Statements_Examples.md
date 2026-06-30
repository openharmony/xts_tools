# 08 语句示例

ArkTS 语句结构的参考示例，覆盖 08_Statements 章节中的所有语句类型。

---

## 表达式语句

```ets
function main(): void {
  let x: number = 42;
  x++;               // 复合赋值表达式作为语句
  foo(x);            // 函数调用表达式作为语句
}
```

## 块语句

```ets
function main(): void {
  let a: number = 1;
  {
    let a: number = 2;  // 内部块，遮蔽外部的 a
    let b: number = 3;
  }
  // b 在此处不可见
}
```

## `let` / `const` 遮蔽

```ets
function main(): void {
  let x: number = 10;
  {
    let x: number = 20;    // 允许：遮蔽外部的 x
    const y: number = 30;  // 块级作用域常量
  }
  // x 恢复为 10
}
```

## `if` / `else` 条件语句

```ets
function signum(n: number): number {
  if (n > 0) {
    return 1;
  } else if (n < 0) {
    return -1;
  } else {
    return 0;
  }
}
```

## `while` / `do` 循环语句

```ets
function sumTo(n: number): number {
  let i: number = 1;
  let s: number = 0;
  while (i <= n) {
    s += i;
    i++;
  }
  return s;
}

function readUntil(input: string): void {
  let idx: number = 0;
  do {
    let ch: string = input[idx];
    console.log(ch);
    idx++;
  } while (idx < input.length);
}
```

## `for` 循环语句

```ets
function sumArray(arr: number[]): number {
  let s: number = 0;
  for (let i: number = 0; i < arr.length; i++) {
    s += arr[i];
  }
  return s;
}
```

## `for-of` 遍历语句

```ets
function printNames(names: string[]): void {
  for (let name of names) {
    console.log(name);
  }
}
```

## `break` 带标签跳出

```ets
function firstDivisor(n: number): number {
  let found: number = -1;
  outer:
  for (let d: number = 2; d < n; d++) {
    for (let i: number = 2; i * d <= n; i++) {
      if (i * d === n) {
        found = d;
        break outer;      // 跳出两层循环
      }
    }
  }
  return found;
}
```

## `continue` 带标签继续

```ets
function skipEvens(limit: number): void {
  outer:
  for (let i: number = 0; i < limit; i++) {
    for (let j: number = 0; j < limit; j++) {
      if ((i + j) % 2 === 0) {
        continue outer;   // 跳到下一次 i 迭代
      }
      console.log(`${i} + ${j} = ${i + j}`);
    }
  }
}
```

## `return` 返回语句

```ets
function max(a: number, b: number): number {
  if (a >= b) {
    return a;
  }
  return b;
}
```

## `switch` 穿透（fall-through）

```ets
function dayType(day: number): string {
  let result: string = "";
  switch (day) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      result = "工作日";
      break;
    case 6:
    case 7:
      result = "周末";
      break;
    default:
      result = "无效";
      break;
  }
  return result;
}
```

## `throw` / `catch` / `finally` 异常处理

```ets
class NegativeError extends Error {
  constructor(msg: string) {
    super(msg);
  }
}

function sqrt(n: number): number {
  if (n < 0) {
    throw new NegativeError("输入为负数");
  }
  return n ** 0.5;
}

function main(): void {
  try {
    let x: number = sqrt(-1);
  } catch (e) {
    console.log("捕获异常:", e);
  } finally {
    console.log("完成");
  }
}
```
