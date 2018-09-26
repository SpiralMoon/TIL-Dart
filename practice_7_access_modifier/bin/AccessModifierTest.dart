/// Dart는 대부분의 OOP가 지원하는 public이나 private같은 접근한정자 키워드가 따로 존재하지 않다.
/// 다만 멤버의 이름앞에 _를 붙여 라이브러리 외부에서 접근을 할 수 없게 통제할 수는 있다.
class AccessModifierTest {

  /// 라이브러리 외부에서도 접근 가능. public
  String name;

  /// 라이브러리 외부에서 접근 불가능. private
  String _mind;

  AccessModifierTest();
}