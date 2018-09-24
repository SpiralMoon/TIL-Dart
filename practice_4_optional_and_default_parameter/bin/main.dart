main () {
  say1("Dart", " lanuage");

  say2("Dart", " lanuage");
  say2("Dart", " and ", "Flutter");

  // 매개변수가 {}로 선언된 함수는 반드시 매개변수명을 마킹 해주어야 한다.
  // say3("1", "2", "3") 처럼은 호출 불가이다.
  // 마킹을 해주면 인자를 넣는 순서는 중요하지 않다.
  say3("1", str2: "2", str3: "3");
  say3("1", str3: "2", str2: "3");

  say4("hello");
  say4("hello", "chamchwi");
  say5("hi");
  say5("hi", name: "kimchwi");
}

/// 일반적인 함수 선언법.
void say1 (String str1, String str2) {
  print(str1 + str2);
}

/// Optional 매개변수를 필요로 하는 함수 선언법.
/// Optional 매개변수는 []을 통해 표시하며, 함수 호출 시에 반드시 인자값을 필수로 하지는 않는다.
/// 물론 인자값이 없으면 안쪽에서 null 체크는 해주어야 한다.
///
/// Dart는 함수 오버로딩을 지원하지 않기 때문에 Optional 사용을 강제로 해야하는 듯 하다.
/// C#이나 Java에 익숙한 나로써는 감점 요소이다.
void say2 (String str1, String str2, [String str3]) {
  if (str3 == null) {
    print(str1 + str2);
  }
  else {
    print(str1 + str2 + str3);
  }
}

/// 매개변수를 {}로 선언하면 함수 호출시에 인자값을 라벨링하여 매칭할 수 있다.
/// ex) say3("", str2 : "", str3 : "")
void say3 (String str1, { String str2, String str3 }) {
  print(str1 + str2 + str3);
}

/// Optional 매개변수에 Default 속성이 설정된 선언된 함수이다.
/// 함수를 호출할 때 name 인자를 넣어주지 않으면 기본값으로 anonymous라는 문자열이 대입되어 호출된다.
void say4 (String message, [String name = "anonymous"]) {
  print (name + " : " + message);
}

/// 위와 같은 원리로 동작한다.
void say5 (String message, {String name = "anonymous"}) {
  print (name + " : " + message);
}