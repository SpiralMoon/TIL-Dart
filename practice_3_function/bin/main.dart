main () {
  print(addition([10, 20 ,30]));
  print(subtraction([10, 20 ,30]));

  print(nullFunction1());
  print(nullFunction2());

  // print(voidFunction()); <- 반환값이 void인 함수는 Object로써 활용이 불가능하다.
}

/// 정수 리스트를 받아 모든 덧셈을 구해 반환하는 함수.
/// 반환형을 지정해주었다.
int addition (List<int> elements) {
  var sum = 0;

  for(int i = 0; i < elements.length; i++) {
    sum += elements[i];
  }

  return sum;
}

/// 정수 리스트를 받아 모든 뺄셈을 구해 반환하는 함수.
/// 반환형을 지정해주지 않았지만 반환되는 변수의 자료형을 유추하여 자동으로 지정된다.
subtraction (List<int> elements) {
  var sum = 0;

  for(int i = 0; i < elements.length; i++) {
    sum -= elements[i];
  }

  return sum;
}

/// 반환형을 지정해주었으나 반환을 하지 않는 경우인데
/// null이 리턴된다.
/// ex) return null;
int nullFunction1 () {

}

/// 위 함수와 마찬가지다
/// ex) return null;
nullFunction2 () {

}

/// null을 반환하는 것이 아무것도 반환하지 않음.
void voidFunction () {

}