/**
 * @id TYP_03_02_014_FAIL_INTERFACE_MISSING_METHOD
 * @expect compile-fail
 * @section 3.2
 * @design 类实现接口缺失方法声明应编译失败
 * @note 反向用例：验证该场景应产生编译时错误
 */
interface Drawable {
  draw(): void
}

class Rect implements Drawable {
  w: int = 0
  h: int = 0
}