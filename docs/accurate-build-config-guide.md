# 精准编译配置指南

XTS精准编译框架是基于PR变更文件列表计算XTS编译目标的OHOS编译系统插件，其初衷在于以减少门禁编译目标数量，节省资源的同时不影响对变更的兼容性编译验证完整性。达成这一目标离不开各位开发者的共同维护，毕竟各子系统开发者团队对变更影响的XTS目标范围理解最准确。本文将详细介绍XTS精准编译框架配置，帮助开发者更规范地管理XTS用例

## 基本概念

为了方便说明，我们将变更分为以下四类：

- 用例仓变更：`test/xts`目录下不同XTS套件，如`acts`、`dcts`和`hats`等，此类变更通常只影响用例本身
- 接口仓变更：变更的文件位于OHOS接口仓中，这些仓只存放接口API定义，是XTS兼容性看护的重点
- 部件仓变更：部件仓是接口的实现，绝大部分仓都是部件仓，这些仓的变更会影响API兼容性，也在XTS看护范围中
- 例外情况：某些仓（如三方库、编译器或测试框架等）变更可能会影响其它部件仓对应的XTS编译目标，此类情况归为例外进行管理

配置目的是为了帮助XTS精准编译框架计算最终要编译的XTS套件目标（即所有变更类型对应XTS目标的总和），接下来针对每一类变更进行详细说明

## 用例仓变更

XTS精准编译框架：
1. 根据变更的文件路径定位到XTS工程根目录的编译配置文件`BUILD.gn`
2. 读取配置中的XIS编译模板，确定编译目标

开发者：
- 确保XTS工程`BUILD.gn`中正确使用tools仓提供的XTS编译模板（[test/xts/tools/build/suite.gni](https://gitcode.com/openharmony/xts_tools/blob/master/build/suite.gni)），不使用原生ohos模板定义XTS目标

## 接口仓变更

配置路径：[`test/xts/tools/config/ci_api_part_name.json`](https://gitcode.com/openharmony/xts_tools/blob/master/config/ci_api_part_name.json)

### Syntax
```json
{
  "<interface_repo_name>": [
    {
      "path": "path/to/interface/dir/or/file",
      "bundle_name": [
        "required"
      ],
      "build_targets": {}
    }
  ]
}
```

### 配置说明
`<interface_repo_name>`
> 类型：字符串，接口仓名称，目前支持`sdk-js`、`sdk_c`和`driver_interface`，线上版本中均有配置，开发者只需在对应接口仓配置中新增即可，后续若新增接口仓请联系XTS团队进行适配

`path`
> 类型：字符串，接口目录或文件路径。若为目录，则该目录下所有文件变更都将视作匹配

`bundle_name`
> 类型：字符串列表，该接口目录或文件路径所影响的部件仓名称，**此项必填，不能为空**

`build_targets`
> 类型：对象，用于指定不同XTS套件中受影响的目标

Example

```json
"build_targets": {
  "acts": [
    "AACommand07",
    "test/xts/acts/ability_runtime/abilitymonitor:ActsAbilityMonitorTest"
  ],
  "dcts": [
    "DctsRpcRequestJsTest"
  ]
}
```

按XTS套件配置目标，如`acts`、`dcts`和`hats`等，按需配置，若某套件无受影响目标，则无需配置该套件

编译目标的配置支持简写（只写目标名）和全称（完整路径:目标名）两种形式。使用简写时要避免配置XTS套件仓中的重名目标，若有会抛出编译错误：未知目标（Unknown target）

### 最终编译目标

需编译的XTS套件目标 = `bundle_name`中所有部件对应的XTS目标 + `build_targets`中所配置的XTS目标

## 部件仓变更

XTS精准编译框架：
1. 根据变更的文件路径定位到部件定义`bundle.json`，从而获取部件名称
2. 根据部件名称当前编译的XTS套件仓中获取部件对应用例，加入待编译清单

开发者：
- 检查XTS工程`BUILD.gn`中目标的`part_name`是否有误（是否与`bundle.json`中的部件名称保持一致），确保部件与用例的正确对应关系，帮助XTS精准编译框架正确匹配对应XTS目标

## 例外情况

配置路径：[`test/xts/tools/config/ci_target_white_list.json`](https://gitcode.com/openharmony/xts_tools/blob/master/config/ci_target_white_list.json)

### Syntax
```json
{
  "repo_list": [
    {
      "path": "path/to/repo0",
      "bundle_name": "required",
      "add_bundle": [],
      "add_target": {}
    },
    {
      "path": "path/to/repo1",
      "bundle_name": "required",
      "subdirectory": {
        "path/to/repo1/sub/dir0": {
          "suite_type": [
            "hap_dynamic"
          ],
          "add_bundle": [],
          "add_target": {}
        },
        "path/to/repo1/sub/dir1": {
          "suite_type": [
            "hap_static"
          ],
          "add_bundle": [],
          "add_target": {}
        }
      }
    }
  ]
}
```

### 配置说明

在`repo_list`对象列表中新增配置项，其中：

`path`
> 类型：字符串，配置仓所在路径

`bundle_name`
> 类型：字符串，配置仓所属部件名称

`add_bundle`
> 类型：字符串列表，用于指定受影响的额外部件名称

Example

```json
"add_bundle": [
  "ets_utils",
  "memory_utils",
  "musl",
  "ets_fronted",
  "node"
]
```

`add_target`
> 类型：对象，用于指定不同XTS套件中受影响的目标

Example

```json
"add_target": {
  "acts": [
    "AACommand07",
    "test/xts/acts/ability_runtime/abilitymonitor:ActsAbilityMonitorTest"
  ],
  "dcts": [
    "FULL_IMPACT"
  ],
  "hats": [
    "FULL_IMPACT_TOTALLY"
  ],
}
```

与接口仓变更配置相同，支持按XTS套件、按需配置目标，目标配置支持简写和全称，简写请注意套件仓中重名目标

额外支持两个特殊标识：
- `FULL_IMPACT`：挑选一组目标作为该XTS套件仓的基线，成功编译这组目标说明变更不影响该套件仓整体编译，基线目标配置位于各套件仓根目录下的`ci_verify_suites.json`文件中
- `FULL_IMPACT_TOTALLY`：全量编译该套件仓，为保证门禁效率，除`interface`仓外，其它仓变更禁止使用

注：这两个特殊标识具有排他性，配置其一后再同时配置任何其它目标将导致编译报错

`subdirectory`
> 类型：对象，支持以子系统粒度配置变更仓的XTS编译目标，除新增一个`suite_type`配置项外，子系统配置项取值与上述无异

### 最终编译目标

需编译的XTS套件目标 = `add_bundle`中所有部件对应的XTS目标 + `add_target`中所配置的XTS目标
