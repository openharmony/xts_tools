# 05 Generics — Test Cases

## Directory Structure

```
ets_cases/
├── 5.1_Type_Parameters/                    # §5.1 类型参数
├── 5.1.1_Type_Parameter_Constraint/        # §5.1.1 类型参数约束
├── 5.1.2_Type_Parameter_Default/           # §5.1.2 类型参数默认值
├── 5.1.3_Type_Parameter_Variance/          # §5.1.3 类型参数变体
├── 5.1.4_Wildcard_Type/                    # §5.1.4 通配符类型
├── 5.2_Generics_Instantiations/5.2.1_Type_Arguments/                   # §5.2.1 类型实参
├── 5.2.2_Explicit_Generic_Instantiations/  # §5.2.2 显式泛型实例化
└── 5.2.3_Implicit_Generic_Instantiations/  # §5.2.3 隐式泛型实例化
```

Each subsection contains three categories:

| Category | Purpose |
|----------|---------|
| `compile-pass/` | Valid syntax — must compile without errors |
| `compile-fail/` | Invalid syntax — compiler must reject |
| `runtime/` | Runtime behavior — must execute correctly |

## Naming Convention

```
GEN_{XX}_{YY}[_{ZZ}]_{NNN}_{TYPE}_{DESCRIPTION}.ets
```

- `GEN` — chapter prefix (Generics)
- `{XX}_{YY}[_{ZZ}]` — subsection number, with optional deeper nesting for sub-subsections (e.g., `05_01`, `05_01_01`)
- `{NNN}` — sequential number
- `{TYPE}` — `PASS` / `FAIL` / `RUNTIME`
- `{DESCRIPTION}` — UPPER_SNAKE_CASE topic description

## Execution

```bash
bash run_generics_cases_wsl.sh
```
