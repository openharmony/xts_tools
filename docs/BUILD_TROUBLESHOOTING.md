# XTS门禁编译常见问题

## 无法找到接口文件对应的XTS目标配置

```bash
[ERROR] Failed to obtain interface file ownership. Please config in test/xts/tools/config/ci_api_part_name.json
[ERROR] Cannot match path ...
```

按提示在[`test/xts/tools/config/ci_api_part_name.json`](https://gitcode.com/openharmony/xts_tools/blob/master/config/ci_api_part_name.json)新增接口配置，**Cannot match path**部分列出了未匹配的接口文件，配置方式参考[精准编译配置指南](https://gitcode.com/openharmony/xts_tools/blob/master/docs/accurate-build-config-guide.md)

## 接口文件配置格式有误

```bash
[ERROR] Invalid interface configuration: ...
```

根据日志提示的错误字段，按照[精准编译配置指南](https://gitcode.com/openharmony/xts_tools/blob/master/docs/accurate-build-config-guide.md)正确配置`ci_api_part_name.json`文件

## 接口仓目录缺乏部件声明

```bash
[ERROR] The repository drivers/interface has a new directory but no bundle.json is found under the directory, Please add bundle.json
```

如日志描述，drivers/interface仓子目录需编写对应的`bundle.json`配置文件

## 排他标识冲突

```bash
[ERROR] These flags are exclusive:
```

特殊标识：`FULL_IMPACT`和`FULL_IMPACT_TOTALLY`具有排他性，任意套件编译配置中能且仅能配置一个，不能与任何其它目标同时配置

## 其它

未列出的问题可先查看[精准编译配置指南](https://gitcode.com/openharmony/xts_tools/blob/master/docs/accurate-build-config-guide.md)，确认配置无误后可求助XTS团队
