# hctest RAM 优化 Feature 说明

## 概述

hctest 框架提供三个独立的编译期 feature flag，用于按需开启 RAM 优化。

## Feature Flag

| Flag | 宏 | 作用 | 默认 |
|------|----|------|------|
| `xts_overlay` | `XTS_OVERLAY_ENABLE` | 5 个最小集模块 .bss 共享 VMA（OVERLAY），节省 RAM | `false` |
| `hctest_rodata_opt` | `HCTEST_RODATA_OPT` | suite/case 注册元数据从 .bss 移入 .rodata（Flash），节省 RAM | `false` |
| `hctest_task_stack_size` | `HCTEST_TASK_STACK_SIZE` | TestService 任务栈大小（字节） | `6144`（0x1800） |
| `hctest_task_queue_size` | `HCTEST_TASK_QUEUE_SIZE` | TestService 任务队列大小 | `20` |
| `hctest_task_type` | `HCTEST_TASK_TYPE` | TestService 任务类型：`SINGLE_TASK` 或 `SHARED_TASK` | `SINGLE_TASK` |

> 当 `xts_overlay` 或 `hctest_rodata_opt` 任一为 `true` 时，自动激活 `HCTEST_NEW_RUNNER` 宏，启用 `RunAllXtsTests` + `.xts_init` 机制。两者都为 `false` 时，回退原始 `SYS_SERVICE_INIT`/`SYS_RUN`/`RUN_TEST_SUITE` 机制。

## 编译命令示例

```bash
# 原始行为（所有优化关闭）
python3 build.py -p wifiiot_hispark_pegasus_minimal@hisilicon \
    --test xts //test/xts/acts/startup_lite/bootstrap_hal:ActsBootstrapTest,//test/xts/acts/distributed_schedule_lite/system_ability_manager_hal:ActsSamgrTest,//test/xts/acts/hiviewdfx_lite/hievent_hal:ActsHieventLiteTest,//test/xts/acts/hiviewdfx_lite/hilog_hal:ActsDfxFuncTest,//test/xts/acts/startup_lite/syspara_hal:ActsParameterTest \
    --gn-args build_xts=true \
    --build-type=debug -f

# 开启 overlay + rodata 优化
python3 build.py -p wifiiot_hispark_pegasus_minimal@hisilicon \
    --test xts //test/xts/acts/startup_lite/bootstrap_hal:ActsBootstrapTest,//test/xts/acts/distributed_schedule_lite/system_ability_manager_hal:ActsSamgrTest,//test/xts/acts/hiviewdfx_lite/hievent_hal:ActsHieventLiteTest,//test/xts/acts/hiviewdfx_lite/hilog_hal:ActsDfxFuncTest,//test/xts/acts/startup_lite/syspara_hal:ActsParameterTest \
    --gn-args build_xts=true \
    --gn-args xts_overlay=true \
    --gn-args hctest_rodata_opt=true \
    --build-type=debug -f

# 自定义任务栈 + SHARED_TASK
python3 build.py -p wifiiot_hispark_pegasus_minimal@hisilicon \
    --test xts //test/xts/acts/startup_lite/bootstrap_hal:ActsBootstrapTest,//test/xts/acts/distributed_schedule_lite/system_ability_manager_hal:ActsSamgrTest,//test/xts/acts/hiviewdfx_lite/hievent_hal:ActsHieventLiteTest,//test/xts/acts/hiviewdfx_lite/hilog_hal:ActsDfxFuncTest,//test/xts/acts/startup_lite/syspara_hal:ActsParameterTest \
    --gn-args build_xts=true \
    --gn-args xts_overlay=true \
    --gn-args hctest_rodata_opt=true \
    --gn-args hctest_task_stack_size=4096 \
    --gn-args hctest_task_type=SHARED_TASK \
    --build-type=debug -f
```

> **注意**：多个 `--gn-args` 必须分开写（每个参数一个 `--gn-args`），不能用空格或逗号合并。
