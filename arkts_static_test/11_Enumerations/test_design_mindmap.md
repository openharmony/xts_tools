# 11 Enumerations Test Design Mindmap

## 覆盖汇总

- 总用例数：44（20P + 14F + 10R）
- 覆盖章节：11_Enumerations、11.1、11.2、11.3、11.4

## 测试分类策略

### compile-pass（正向编译）
- 基本 int/string 枚举声明
- 空枚举、重复值、导出枚举
- 限定访问、初始化器可省略限定名
- 基类型推断（int/string）
- 显式基类型（double/long/byte/short/float/string）
- 自动递增、混合初始化、常量表达式初始化
- 枚举方法返回类型

### compile-fail（反向编译）
- const enum 暂不支持
- 重复成员名、混合基类型推断失败
- 非 int 基类型无初始化器
- 成员值不可赋给基类型
- Object 作为基类型
- 非常量后成员缺初始化器

### runtime（运行时行为）
- 基本成员值和相等比较
- 显式基类型运行时
- 自动递增运行时值验证
- values() / getValueOf() / fromValue()
- toString() / valueOf() / getName()
- 按值索引、同值最后优先
- 不存在的值/名 throw
- string 枚举方法

## 各小节覆盖要点

### 11 Enumerations（9 用例：6P+2F+1R）
- ✅ int 枚举基本声明、空枚举、重复值
- ✅ 限定访问、导出枚举、初始化器省略限定
- ❌ const enum → 编译错误
- ❌ 重复成员名 → 编译错误
- ✅ 运行时成员值和相等比较

### 11.1 Enumeration Base Type（8 用例：5P+3F+0R）
- ✅ int 推断（有无初始化器成员）
- ✅ 全部 int/全部 string 推断
- ❌ 混合 int+string 推断失败
- ❌ string 推断但有无初始化器成员失败
- ⚠️ 无 runtime 用例（基类型推断为纯编译期行为）

### 11.2 Enumeration with Explicit Base Type（8 用例：3P+4F+1R）
- ✅ 显式 double/long/byte/short/float/string
- ❌ 非整数基类型无初始化器
- ❌ 成员值不可赋值、string 给 int 初值
- ❌ Object 作为基类型
- ✅ 运行时显式 int 枚举

### 11.3 Initialization of Enumeration Members（8 用例：4P+3F+1R）
- ✅ 全部省略自动递增、非 int 基类型显式初始化
- ✅ 混合显式+自动、常量表达式初始化
- ❌ 非 int 无初始化器、string 无初始化器
- ❌ 非常量后成员缺初始化器
- ✅ 运行时混合初始化值验证

### 11.4 Enumeration Methods（11 用例：2P+2F+7R）
- ✅ values/getValueOf/fromValue 返回类型
- ✅ toString/valueOf/getName 返回类型
- ❌ getValueOf 非 string 参数
- ❌ fromValue 参数类型与基类型不匹配
- ✅ 运行时 values/getValueOf/fromValue、不存在值 throw
- ✅ 运行时 toString/valueOf/getName、按值索引
- ✅ 同值最后优先、string 枚举方法
