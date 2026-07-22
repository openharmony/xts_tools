# 18 Annotations Test Design Mindmap

## 覆盖汇总

- 总用例数：120（69P + 33F + 18R）
- 覆盖章节：18.1 ~ 18.6 全部 10 个小节

## 测试分类策略

### compile-pass（正向编译）
- 注解声明（空/单字段/多字段/默认值/导出）
- 字段类型（int/string/boolean/枚举/数组）
- 注解使用（有参/无参/多注解/各类目标）
- 单字段注解简化语法
- 导入/导出注解
- ambient 注解
- 标准注解（@Retention/@Target）
- 运行时访问

### compile-fail（反向编译）
- 注解字段使用不允许的类型（Object/注解自身/类）
- 注解名与类名冲突
- type alias 应用于注解
- 类实现注解
- 注解非顶层定义
- 默认值非常量表达式
- @Target 限制违规
- 导入不存在的注解

### runtime（运行时行为）
- 注解应用后代码正常运行
- 注解不改变运行时语义
- 多注解共存

## 各小节覆盖要点

### 18.1 Declaring Annotations（14 用例：5P+8F+1R）
- ✅ 空注解/单字段/多字段/默认值/导出
- ❌ 注解字段类型为其余注解/类名冲突/type alias/非顶层定义

### 18.1.1 Types of Annotation Fields（26 用例：17P+8F+1R）
- ✅ int/string/boolean/数组/对象字段类型
- ❌ Object/注解作为字段类型

### 18.2 Using Annotations（23 用例：16P+6F+1R）
- ✅ 函数/类/字段/参数/方法各处使用
- ❌ 缺少 @ 前缀/访问不可见注解

### 18.2.1 Using Single Field Annotations（11 用例：8P+2F+1R）
- ✅ 单字段简化语法
- ❌ 多字段误用单字段语法

### 18.3 Exporting and Importing（8 用例：3P+4F+1R）
- ✅ 导出/导入注解
- ❌ 导入不存在的注解

### 18.4 Ambient Annotations（7 用例：3P+3F+1R）
- ✅ declare @interface 声明
- ❌ ambient 注解使用错误

### 18.5 Standard Annotations（7 用例：3P+3F+1R）
- ✅ @Retention/@Target 声明
- ❌ 非法 Retention/Target 参数

### 18.5.1 Retention Annotation（9 用例：5P+3F+1R）
- ✅ RUNTIME/BYTECODE/SOURCE 三种策略
- ❌ 非法字符串参数

### 18.5.2 Target Annotation（9 用例：5P+3F+1R）
- ✅ CLASS/METHOD/FIELD/PARAMETER 目标限制
- ❌ 目标不匹配

### 18.6 Runtime Access（6 用例：4P+1F+1R）
- ✅ 注解运行时访问
- ❌ 注解不可作为类型使用 ⚠️ D 类
