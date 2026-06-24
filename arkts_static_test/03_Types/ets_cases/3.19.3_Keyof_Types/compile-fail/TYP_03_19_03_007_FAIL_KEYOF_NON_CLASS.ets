/**
 * @id TYP_03_19_03_007_FAIL_KEYOF_NON_CLASS
 * @expect compile-fail
 * @section 3.19.3
 * @design keyof 应用于非类/接口类型应产生编译时错误
 * @note 反向用例：spec 3.19.3 规定 typeReference 非 class/interface 应报错
 *       ⚠️ SPEC 不一致：ArkTS 实际允许 keyof number 编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
type WrongKeyof = keyof number