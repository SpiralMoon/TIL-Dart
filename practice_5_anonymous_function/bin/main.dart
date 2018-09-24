main () {

  var list = <String>["first", "second", "third"];

  // 1
  for(int i = 0; i < list.length; i++) {
    speak(list[i]);
  }

  /*
   * 2. 익명함수를 만들지 않고 바로 speak 함수를 호출할 수 있었음.
   * 수행할 작업이 한 줄 짜리였기 때문.
   */
  list.forEach((item) => speak(item));

  /*
   * 3. 익명함수를 만들고 그 안에서 speak 함수 호출.
   * 수행할 작업이 여러 코드줄일 경우.
   * C#이었으면 () => {} 형태였겠지만, Dart에서는 () {} 로 축약된 형태.
   * => 람다구문을 사용하지 않는듯 하다.
   */
  list.forEach((item) {
    speak(item);
    // do something...
  });



  /*
   * Dart는 자바스크립트처럼 함수를 객체취급하며 아래와 같은 구문이 허용된다.
   * 함수를 변수처럼 선언하여 사용하는 것이 가능.
   */
  var func = (p) {
    return p * p;
  };
  print(func(100));
}

void speak(Object param) {
  print(param);
}