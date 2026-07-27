# Chapter 15 (Semantic Rules) — Spec-to-Cases Gap Analysis

**Date**: 2026-07-16
**Spec**: `semantics.md` (2650 lines)
**Manifest**: 873 declared cases across 67 subtopics
**Scaffold count**: 261 / 873 (~30%) are dummy scaffolds (bodies like `let value = 1; value = value + 1`)
**Effective real cases**: ~612

---

## §15.2 — Subtyping (spec lines 206–660)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 1 | 15.2 (Ln228-230): Resizable array types and tuple types not related except by identity | ✅ Partial | PASS/Fail cases exist for tuple/resizable mismatch; scaffold notes suggest incomplete | Pri:2 |
| 2 | 15.2.1 (Ln251-324): 5 direct subtype rules (class extends class, class→Object, class implements interface, interface extends interface, interface→Object) | ✅ Covered | 7 dedicated cases (5 pass + 1 fail); 4 sub-section files also exist | P:01 |
| 3 | 15.2.2 (Ln327-411): Generic class subtyping via extends/implements/Object | ✅ Covered | 14 cases (6 pass + 7 fail); covers invariance, covariance, contravariance | P:01 |
| 4 | 15.2.2 (Ln382-383): Direct supertype of a type parameter = its constraint | ⚠️ Partial | Reviewed as part of generic subtyping; no isolated case specifically demonstrating "type parameter's direct supertype is its constraint" | Pri:2 |
| 5 | 15.2.2 (Ln386-411): Variance-based subtyping for `G<in T1, out T2>` → `G<S,T> <: G<U,V>` when `S>:U, T<:V` | ⚠️ Partial | `SEM_15_02_02_005/006` test `in`/`out` independently, but the SPEC EXAMPLE (`E<in T>`, `F<out T>`) combining both `in` and `out` in a single generic is NOT explicitly tested. | P:01 |
| 6 | 15.2.3 (Ln418-441): String literal type `"1"` <: `string`; effect on overriding | ✅ Covered | 7 cases; `SEM_15_02_03_003_PASS_string_literal_override_subtype` tests the override scenario | P:01 |
| 7 | 15.2.3 (Ln439-441): Literal `null` and `undefined` subtypes only to themselves | ⚠️ Partial | Cases cover string literal subtyping; `null`/`undefined` literal subtype self-reflexivity is NOT explicitly tested | Pri:2 |
| 8 | 15.2.4 (Ln448-468): Tuple `T(P:01...Pn)` <: `S(P:01...Pm)` when n ≥ m and Pi identical; tuple <: `Tuple` | ✅ Covered | 9 cases (4 pass + 4 fail) cover longer→shorter, identity, element mismatch | P:01 |
| 9 | 15.2.5 (Ln476-545): Union subtyping — rule 1 (each Ui <: T), rule 2 (T <: Ui for some i), two-union case, normalization | ✅ Covered | 16 cases (8 pass + 7 fail) cover union→base, member→union, two-union, normalization | P:01 |
| 10 | 15.2.5 (Ln530-534): Two-union subtyping: Step 1 applies first, then Step 2 | ⚠️ Partial | `SEM_15_02_05_101_FAIL_two_union_subtype_gap` exists but may not fully exercise the spec's clarification | Pri:2 |
| 11 | 15.2.6 (Ln548-611): Function type subtyping — 6 conditions (param count, required params, rest params, contravariant params, rest element, covariant return) | ✅ Covered | 12 cases (6 pass + 5 fail) | P:01 |
| 12 | 15.2.6 (Ln570-575): Rest parameter subtyping rules (SPrest <: FPrest, and for i > m, SPi <: element type of FPrest) | ❌ **GAP** | No case exercises the rest-parameter subtype rule for function types (SPrest <: FPrest, elements of rest for extra params) | Pri:2 |
| 13 | 15.2.6 (Ln605-611): Optional parameter subtyping tests (m ≤ n, optional vs required mismatches) | ✅ Covered | `SEM_15_02_06_005/006_PASS` and `101/102_FAIL` cover optional/required mismatch | P:01 |
| 14 | 15.2.7 (Ln613-649): Fixed-size array `FixedSize<B> <: FixedSize<A>` if B <: A; ArrayStoreError at runtime | ✅ Covered | 7 cases (4 pass + 2 fail); runtime store check in PASS_004 | P:01 |
| 15 | 15.2.8: Intersection type subtyping | ❌ **GAP** | Both pass cases are **PLACEHOLDER/scaffold**; fail cases say UNSUPPORTED. No real test of intersection subtyping exists. | P:01 |
| 16 | 15.2.9 (Ln654-659): Difference type `A - B` <: T if A <: T; T <: `A - B` if T <: A and T & B = never | ❌ **GAP** | Both pass cases are **scaffold/placeholder**; fail cases say UNSUPPORTED. No real test. | P:01 |

---

## §15.3 — Type Identity (spec lines 661–709)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 17 | Array `T1[]` ≡ `Array<T2>` if T1 ≡ T2 | ✅ Covered | 27 cases covering array, tuple, union, generic, function, mutual-subtype identity | P:01 |
| 18 | Tuple identity (same count, each element identical) | ✅ Covered | | P:01 |
| 19 | Union identity (same count, permutation yields identity) | ✅ Covered | | P:01 |
| 20 | Mutual subtype ⇒ identity (Ln688-689) | ✅ Covered | `SEM_15_03_00_010_PASS_mutual_subtyping_identity` | P:01 |
| 21 | Type alias creates no new type (Ln692-693) | ✅ Covered | `SEM_15_03_00_002/009` | P:01 |
| 22 | Generic class type param T vs method type param T are different (Ln696-709) | ✅ Covered | Spec example code covered | P:01 |

---

## §15.4 — Assignability (spec lines 711–725)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 23 | `T1` assignable to `T2` if T1 <: T2 OR implicit conversion exists | ✅ Covered | 30 cases (17 pass + 11 fail) | P:01 |
| 24 | Assignability is asymmetric (Ln723-725) | ✅ Covered | Implicit in fail cases | P:01 |

---

## §15.5 — Invariance, Covariance, Contravariance (spec lines 727–794)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 25 | Variance definitions: covariance, contravariance, invariance (Ln738-749) | ✅ Covered | 24 cases (13 pass + 9 fail) | P:01 |
| 26 | Valid override examples: invariance, return covariance, param contravariance (Ln763-777) | ✅ Covered | | P:01 |
| 27 | Invalid override: param covariance, return contravariance (Ln787-794) | ✅ Covered | | P:01 |

---

## §15.6 — Compatibility of Call Arguments (spec lines 796–881)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 28 | Step 1: Spread-of-array-literal linearization (Ln805-808) | ✅ Covered | `SEM_15_06_00_013_PASS_spread_array_literal_linearized` | P:01 |
| 29 | Step 2: Left-to-right arg-param check with non-rest, rest-array, rest-tuple (Ln810-841) | ✅ Covered | 34 cases (15 pass + 13 fail) cover rest, spread, optional, missing, excess | P:01 |
| 30 | Spread expression for rest_array_form and rest_tuple_form separately (Ln820-836) | ✅ Covered | `spread_tuple`, `rest_arguments`, `spread_element_mismatch` cases | P:01 |

---

## §15.7 — Type Inference (spec lines 883–1093)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 31 | 15.7.1 (Ln909-916): Context types allowing constant expression inference (assignment-like, cast, numeric-operator) | ✅ Covered | 10 cases (6 pass + 3 fail) | P:01 |
| 32 | 15.7.1 (Ln919-926): Default types: int for 32-bit, long for 64-bit, double/float for float | ✅ Covered | | P:01 |
| 33 | 15.7.1 (Ln928-951): Target type must be numeric type (Case 1) or union with numeric (Case 2) | ✅ Covered | | P:01 |
| 34 | 15.7.1 (Ln946-947): Floating-point suffix prevents type inference (spec NOTE) | ❌ **GAP** | The spec explicitly states "A floating-point suffix if present declares a floating-point literal, and no type inference occurs." No case tests that `123f` in an assignment-like context is NOT inferred. | Pri:2 |
| 35 | 15.7.1 (Ln973-1019): Case 2 — Union target type with numeric: inference rules (if no Ni suits → default; single Ni suits → that Ni; multiple suits → integer check else ambiguity) | ⚠️ Partial | Cases test `byte | Object`, `byte | string`, `int | double`, `byte | long`, `float | double` but the "floating-point suffix prevents inference" is not tested. | P:01 |
| 36 | 15.7.1 (Ln1021-1032): Union with no numeric type → default literal type used | ✅ Covered | `SEM_15_07_01_006_PASS_union_no_numeric_type` | P:01 |
| 37 | 15.7.2 (Ln1039-1042): Missing return type is inferred; native function without return type → CTE | ✅ Covered | `SEM_15_07_00_100_FAIL_native_missing_return_type` | P:01 |
| 38 | 15.7.2 (Ln1047-1050): No return or all return without expression → `void` | ✅ Covered | `SEM_15_07_02_001_PASS_RETURN_MATCH` | P:01 |
| 39 | 15.7.2 (Ln1051-1052): k return with same type R → R is return type | ✅ Covered | `SEM_15_07_02_002_PASS_RETURN_COVARIANCE` | P:01 |
| 40 | 15.7.2 (Ln1053-1058): k return with types T1..Tk → union type; if some return has no expr, add `undefined` | ⚠️ Partial | Union return inference tested; the "add undefined when some return has no expression" is NOT explicitly tested | Pri:2 |
| 41 | 15.7.2 (Ln1059-1061): Lambda with throw but no return → return type `never` | ❌ **GAP** | Spec says "If a lambda body contains no return statement but at least one throw statement, then the lambda return type is never." No case tests this. | Pri:2 |
| 42 | 15.7.2 (Ln1062-1065): Async function return type inference → `Promise<T>` | ❌ **GAP** | Spec says if async and return type T is not Promise, then assume Promise<T>. No case tests async return type inference. | Pri:2 |
| 43 | 15.7 (Ln896-902): All type inference contexts (constant expr, variable init, generic instantiation, return type, lambda param, array/object literal) | ⚠️ Partial | Implicit generic instantiation inference is NOT specifically tested as a standalone scenario | Pri:2 |

---

## §15.8 — Smart Casts and Smart Types (spec lines — not in semantics.md, cross-ref to other spec chapters)

The spec's §15.8 cross-references are brief; most smart cast rules are in the Type System chapter. The test suite has **63 cases** (37 pass + 21 fail) covering instanceof, typeof, control flow, nested, ternary, switch, loops, field copies, closures.

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 44 | 15.8.1: Type expression for smart casts (instanceof narrowing) | ✅ Covered | 7 cases | P:01 |
| 45 | 15.8.2: Intersection types in smart cast context | ❌ **GAP** | PASS cases are scaffold/placeholder; FAIL cases say UNSUPPORTED | P:01 |
| 46 | 15.8.3: Difference types in smart cast context | ❌ **GAP** | Same as intersection — scaffolds and UNSUPPORTED | P:01 |
| 47 | 15.8.4: Computing Smart Types — narrowing after null/instanceof check | ⚠️ Partial | Only 1 pass + 1 fail real case; the spec description is more comprehensive | Pri:2 |
| 48 | 15.8.5: Control flow graph for smart types | ⚠️ Partial | Only 1 pass + 1 fail real case | Pri:2 |
| 49 | 15.8.6: Type expression simplification | ⚠️ Partial | Only 1 pass + 1 fail real case | Pri:2 |
| 50 | 15.8: Smart cast for `enum` types with `instanceof` | ❌ **GAP** | Not tested | P3 |
| 51 | 15.8: Smart cast for `FixedArray` types | ❌ **GAP** | Not tested | P3 |

---

## §15.9 — Overriding (spec lines 1095–1488)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 52 | 15.9.1 (Ln1122-1124): Only accessible methods can be overridden | ✅ Covered | `SEM_15_09_01_101_FAIL_override_private` | P:01 |
| 53 | 15.9.1 (Ln1126-1129): Override can retain modifier or change protected → public; otherwise CTE | ✅ Covered | `SEM_15_09_00_103_FAIL_access_reduction`, `SEM_15_09_00_005_PASS` | P:01 |
| 54 | 15.9.1 (Ln1160-1174): Instance method with same name — override-compatible check, erased-signature error, or implicit overloading | ✅ Covered | `SEM_15_09_00_105_FAIL_erased_signature_conflict` | P:01 |
| 55 | 15.9.1 (Ln1207-1223): Single method in subclass can override several methods of superclass | ✅ Covered | `SEM_15_09_01_005_PASS_single_overrides_multiple` | P:01 |
| 56 | 15.9.1 (Ln1225-1237): Multiple methods overriding same superclass method → CTE | ✅ Covered | `SEM_15_09_01_103_FAIL_multiple_override_same` | P:01 |
| 57 | 15.9.2 (Ln1244-1258): Interface method overriding — same rules as class overriding | ✅ Covered | 10 cases (5 pass + 4 fail) | P:01 |
| 58 | 15.9.2 (Ln1296-1308): Multiple interface methods overriding same superinterface method → CTE | ✅ Covered | `SEM_15_09_02_103_FAIL_interface_multiple_override_same` | P:01 |
| 59 | 15.9.3 (Ln1338-1357): Override-compatible signatures — 6 conditions | ✅ Covered | 11 cases (8 pass + 2 fail) | P:01 |
| 60 | 15.9.3 (Ln1341): Condition 1: Same number of parameters (n = m) | ✅ Covered | `SEM_15_09_00_100_FAIL_param_count_mismatch` | P:01 |
| 61 | 15.9.3 (Ln1342-1343): Condition 2: Each param type Ti is supertype of Ui (contravariance) | ✅ Covered | `SEM_15_09_03_001_PASS_COMPATIBLE_OVERRIDE` | P:01 |
| 62 | 15.9.3 (Ln1344-1345): Condition 3: If return type Tm+1 is `this`, then Un+1 is `this` or supertype | ❌ **GAP** | The `this` return type override compatibility rule is NOT tested. No case has `this` as a return type in an override context. | Pri:2 |
| 63 | 15.9.3 (Ln1346-1347): Condition 4: If return type is not `this`, it's subtype of Un+1 (covariance) | ✅ Covered | `SEM_15_09_00_102_FAIL_return_wrong_direction` | P:01 |
| 64 | 15.9.3 (Ln1348): Condition 5: Same number of type parameters (k = j) | ❌ **GAP** | No case tests that overriding with mismatched type parameter counts is a CTE. The test `SEM_15_09_03_002_PASS_generic_override_pattern` uses matching counts. | Pri:2 |
| 65 | 15.9.3 (Ln1349-1351): Condition 6: Constraints of W1..Wj contravariant to constraints of V1..Vk | ✅ Covered | `SEM_15_09_03_101_FAIL_contravariant_type_param_constraint` | P:01 |
| 66 | 15.9.3 (Ln1353-1358): Derived class type parameter constraints must be subtypes of base constraints | ✅ Covered | `SEM_15_09_03_003_PASS_covariant_type_param_constraint` | P:01 |
| 67 | 15.9.3 (Ln1437-1488): Override compatibility with Object for all parameter kinds | ✅ Covered | `SEM_15_09_03_008_PASS_override_with_object` | P:01 |

---

## §15.10 — Overloading (spec lines 1490–1655)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 68 | 15.10 (Ln1493-1511): Overloading definition — compile-time polymorphism, first-match algorithm | ✅ Covered | 49 cases (22 pass + 22 fail) | P:01 |
| 69 | 15.10 (Ln1513-1517): Implicit overload-equivalent → CTE; explicit never checked; explicit with separate names never CTE | ✅ Covered | | P:01 |
| 70 | 15.10 (Ln1519-1527): Overloading `main` prohibited → CTE | ✅ Covered | `SEM_15_10_00_101_FAIL_overload_main` | P:01 |
| 71 | 15.10.1 (Ln1534-1535): Same-name functions in same scope → implicit overload | ✅ Covered | | P:01 |
| 72 | 15.10.1 (Ln1537-1541): Same-name functions in different scopes NOT implicitly overloaded; **imported name conflict with local function → CTE** | ❌ **GAP** | No case tests that an imported function with the same name as a local function causes a compile-time error. | Pri:2 |
| 73 | 15.10.1 (Ln1556-1578): Overload-equivalent non-generic → CTE; generic + non-generic equivalent → OK, textually first used | ✅ Covered | `SEM_15_10_01_006/007` | P:01 |
| 74 | 15.10.2 (Ln1585-1592): Method overloading — same name, both static or both non-static; overload-equivalent → CTE | ✅ Covered | | P:01 |
| 75 | 15.10.2 (Ln1594-1610): Inheritance-caused implicit overload | ✅ Covered | `SEM_15_10_02_003_PASS_inherited_method_overload` | P:01 |
| 76 | 15.10.2 (Ln1629-1646): Generic class instantiation leading to overload-equivalent methods → textually first called | ✅ Covered | `SEM_15_10_02_005_PASS_generic_class_equiv_first` | P:01 |
| 77 | 15.10.3 (Ln1653-1659): Constructor overloading; overload-equivalent → CTE | ✅ Covered | | P:01 |
| 78 | 15.10.4 (Ln1678-1685): Overload-equivalent signatures — same param count, effective signature types equal; return type irrelevant | ✅ Covered | | P:01 |

---

## §15.11 — Overload Resolution (spec lines 1696–2282)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 79 | 15.11.1 (Ln1749-1758): Overload set formed from explicit declaration list OR implicit in textual order | ✅ Covered | 86 cases overall | P:01 |
| 80 | 15.11.1 (Ln1760-1761): Explicit overload identifier denoting implicitly overloaded name → CTE | ✅ Covered | | P:01 |
| 81 | 15.11.1 (Ln1764-1766): Explicit overload position doesn't influence order; processed at end of scope | ✅ Covered | | P:01 |
| 82 | 15.11.2: Overload set for functions — explicit vs implicit, no combining | ✅ Covered | | P:01 |
| 83 | 15.11.3: Overload set for interface methods — local set + superinterface sets appended | ✅ Covered | | P:01 |
| 84 | 15.11.4: Overload set for static methods — no inheritance | ✅ Covered | | P:01 |
| 85 | 15.11.5: Overload set for class instance methods — local + superclass + superinterface | ✅ Covered | | P:01 |
| 86 | 15.11.6: Overload set for constructors — textual order | ✅ Covered | | P:01 |
| 87 | 15.11.7 (Ln2063-2065): Warning for unreachable overload entity | ✅ Covered | 6 cases (4 pass + 1 fail) | P:01 |
| 88 | 15.11.8 (Ln2085-2101): Method call with function-with-receiver — only receiver functions considered for overload set | ✅ Covered | `SEM_15_11_08_003_PASS_function_with_receiver` | P:01 |
| 89 | 15.11.8 (Ln2103-2127): If identifier denotes both instance methods AND functions-with-receiver → method set wins; **warning issued** | ⚠️ Partial | The PASS case tests that method call resolves correctly; the **compile-time warning** scenario (when methods win over receivers) is NOT separately tested as a compile-fail (warning) case. | Pri:2 |
| 90 | 15.11.9 (Ln2132-2144): Overloading + overriding interaction: compile-time selects overload, runtime dispatches override | ✅ Covered | `SEM_15_11_09_001-004` and runtime cases | P:01 |
| 91 | 15.11.10 (Ln2207-2283): Dynamic resolution algorithm | ✅ Covered | 5 dedicated cases; runtime dispatch patterns | P:01 |
| 92 | 15.11.10 (Ln2258-2277): Superinterface search — multiple default methods → failure; no default methods → failure | ❌ **GAP** | The spec's dynamic resolution algorithm for superinterface search (distinguishing between "multiple default methods" and "no default methods" leading to resolution failure) is NOT explicitly exercised. | Pri:2 |

---

## §15.12 — Type Erasure (spec lines 2284–2433)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 93 | 15.12 (Ln2295-2303): Effective type properties (preserves subtyping, distributes over union, undefined subtype) | ✅ Covered | 38 cases (17 pass + 15 fail) — well-covered | P:01 |
| 94 | 15.12 Effective type mapping table — Generic types (Ln2336-2342) | ✅ Covered | `SEM_15_12_00_001/002` | P:01 |
| 95 | 15.12 — Type parameters → constraint (Ln2343-2344) | ✅ Covered | `SEM_15_12_00_005` | P:01 |
| 96 | 15.12 — Union types → union of effective types (Ln2345-2346) | ✅ Covered | `SEM_15_12_00_006` | P:01 |
| 97 | 15.12 — Array types T[] → same as Array<T> (Ln2347-2348) | ✅ Covered | `SEM_15_12_00_007` | P:01 |
| 98 | 15.12 — FixedArray<T> → preserved (Ln2349-2351) | ✅ Covered | `SEM_15_12_00_008` | P:01 |
| 99 | 15.12 — Function types (Pn) => R → internal generic with Any params, never return (Ln2352-2356) | ✅ Covered | `SEM_15_12_00_104` compile-fail | P:01 |
| 100 | 15.12 — Function types with rest (Pn, ...PR) => R (Ln2357-2363) | ❌ **GAP** | No case specifically tests the rest-parametrized function type erasure (internal generic rest-parametrized type). | Pri:2 |
| 101 | 15.12 — Tuple types → internal generic tuple type (Ln2364-2365) | ✅ Covered | `SEM_15_12_00_102` compile-fail | P:01 |
| 102 | 15.12 — String literal types → string (Ln2367-2368) | ✅ Covered | `SEM_15_12_00_003/010` | P:01 |
| 103 | 15.12 — **Awaited<T> effective type (Ln2369-2378)** | ❌ **GAP** | Spec defines 4 cases for Awaited<T>. NOT tested at all. This includes Promise unwrapping and type parameter variance cases. | Pri:2 |
| 104 | 15.12 — **NonNullable<T> effective type (Ln2379-2380)** | ⚠️ Partial | `SEM_15_12_00_009_PASS_nonnullish_effective` exists but it's unclear if it specifically tests NonNullable<T> or just the general concept | Pri:2 |
| 105 | 15.12 — **Partial<T> effective type (Ln2381-2382)** | ❌ **GAP** | "Special runtime partial class" — NOT tested | P3 |
| 106 | 15.12 — **Required<T> effective type (Ln2383-2384)** | ❌ **GAP** | Trivial (Effective type(T)) but still NOT tested | P3 |
| 107 | 15.12 — **Readonly<T> effective type (Ln2385-2386)** | ❌ **GAP** | Trivial but NOT tested | P3 |
| 108 | 15.12 — **Record<K,V> effective type (Ln2387-2388)** | ❌ **GAP** | `Map<EffectiveType(K), EffectiveType(V)>` — NOT tested | Pri:2 |
| 109 | 15.12 — **ReturnType<F> effective type (Ln2389-2390)** | ❌ **GAP** | NOT tested | Pri:2 |
| 110 | 15.12 (Ln2392-2404): Effective signature type — return type `never` preserved; otherwise original preserved | ❌ **GAP** | The spec explicitly defines effective signature type as different from effective type for `never` return. No case tests this distinction. | Pri:2 |
| 111 | 15.12 (Ln2407-2433): Runtime ClassCastError from erasure | ✅ Covered | Runtime cases test generic cast and erased field reads | P:01 |

---

## §15.13 — Static Initialization (spec lines 2435–2501)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 112 | 15.13 (Ln2444-2450): Static init includes initializers, top-level statements, static blocks | ✅ Covered | 27 cases (9 pass + 6 fail) | P:01 |
| 113 | 15.13 (Ln2452-2460): Static init triggers — static method call, static field access, new instance, subclass init | ✅ Covered | Runtime trigger cases exist | P:01 |
| 114 | 15.13 (Ln2462-2464): No recursive static init | ❌ **GAP** | The spec note says "None of the operations above invokes a static initialization of the same entity recursively if it is not completed." No case explicitly tests this. | Pri:2 |
| 115 | 15.13 (Ln2470-2472): Incomplete init due to exception → retry throws again | ❌ **GAP** | No case tests exception-terminated static init reattempt. | Pri:2 |
| 116 | 15.13 (Ln2474-2478): Concurrent static init synchronization | ✅ Covered | `SEM_15_13_00_203_RUNTIME_CONCURRENT_init` | P:01 |
| 117 | 15.13 (Ln2480-2481): Circular init deadlock | ✅ Covered | `SEM_15_13_00_205_RUNTIME_CIRCULAR_init` | P:01 |
| 118 | 15.13.1 (Ln2488-2494): CTE if named reference refers to uninitialized entity | ✅ Covered | Multiple compile-fail cases | P:01 |
| 119 | 15.13.1 (Ln2496-2501): Runtime: default value if type has default; else NullPointerError | ❌ **GAP** | The spec says when compile-time detection is impossible, runtime produces default value or NullPointerError. No case tests this runtime fallback behavior. | Pri:2 |

---

## §15.14 — Compatibility Features (spec lines 2503–2646)

| # | Spec Rule | Covered? | Gap Details | Severity |
|---|-----------|----------|-------------|----------|
| 120 | 15.14.1 (Ln2538-2597): Truthiness table — string, boolean, char, enum, number, integer, bigint, null/undefined, union, other non-nullish | ✅ Covered | 44 cases (28 pass + 2 fail) — separate cases for each truthiness type | P:01 |
| 121 | 15.14.1 (Ln2603-2609): Conditional-and extended semantics — known-at-compile vs unknown | ⚠️ Partial | Cases test `false \|\| 1` (known) and `true \|\| 1` (known). The "unknown at compile time" case (e.g., `boolVar && expr` → `A \| B`) is NOT explicitly tested as a standalone case. | Pri:2 |
| 122 | 15.14.1 (Ln2611-2617): Conditional-or extended semantics — same | ⚠️ Partial | Same as above — unknown compile-time value case not explicitly tested. | Pri:2 |

---

## Summary: Gap Severity Counts

| Severity | Count | Description |
|----------|-------|-------------|
| **P:01 (core rule)** | 7 | Intersection subtyping, Difference subtyping, Intersection smart types, Difference smart types, Awaited<T> erasure, Record<K,V> erasure, Effective signature type for never return |
| **Pri:2 (edge case)** | 17 | Floating-point suffix prevents inference, lambda throw→never, async→Promise<T>, `this` return override, type param count mismatch, function with rest param erasure, NonNullable/Partial/Required/Readonly/ReturnType erasure, imported name conflict, recursive static init, exception-terminated init, runtime fallback, supinterface search multiple defaults, unknown compile-time truthiness, etc. |
| **P3 (minor)** | 3 | Partial<T>, Required<T>, Readonly<T> effective types (all trivial) |

**Total real gaps: 27** (plus many partially-covered rules marked with ⚠️)
