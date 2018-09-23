main() {
  /*
   * Dart는 기본적으로 var 타입을 지원한다.
   * 컴파일 시, 우항의 자료형을 추론하여 좌항 변수의 자료형이 정해지는 것이다.
   * 좌항의 자료형이 정해지면 이후에 변수값을 지정할 때 동일한 자료형을 가진 변수값만 대입할 수 있다.
   * C#의 var와 동일한 원리.
   */
  var str = "string type";
  // str = 1; <- 불가능
  // str = "temp string"; <- 가능

  /*
   * dynamic 타입.
   * var 타입과는 다르게 자료형이 정해져도 또 다른 자료형의 데이터를 대입할 수 있다.
   * 자바스크립트의 var와 동일한 원리.
   * C#의 dynamic과 동일한 원리.
   */
  dynamic dynamicVariable = 1;
  dynamicVariable = "string type";
  dynamicVariable = 132131.3;
  // 뭘 넣던 다 들어간다.

  /*
   * 지정 타입으로는 아래와 같은 자료형들이 있다.
   *
   */
  int a = 0;
  double b = 0.5;
  bool c = true;
  String d = "str";

  print(a);
  print(b);
  print(c);
  print(d);

  /*
   * 초기화를 안해주면 자동으로 null 값이 대입된다.
   * 기본적으로 nullable 타입인듯 하다.
   * ex) Dart int == C# int?
   */
  int aa;
  double bb;
  bool cc;
  String dd;

  print(aa);
  print(bb);
  print(cc);
  print(dd);
}