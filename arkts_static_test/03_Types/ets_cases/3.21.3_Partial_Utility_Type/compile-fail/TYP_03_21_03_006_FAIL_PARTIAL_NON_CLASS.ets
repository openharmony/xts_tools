/**
 * @id TYP_03_21_03_006_FAIL_PARTIAL_NON_CLASS
 * @expect compile-fail
 * @section 3.21.3
 * @design Partial 应用于非 class/interface 类型应编译错误
 * @note 反向用例：spec 要求 T 必须是 class/interface
 *       ⚠️ SPEC 不一致：Partial<int> 实际编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
type Bad6 = Partial<int>