main () {
  /*
   * List.
   *
   * 공식문서에서는 List 라는 이름으로 소개하고 있다.
   * 선언은 []로 하며 콤마(,)로 요소를 구분하여 넣을 수 있다.
   *
   * 각 요소의 자료형이 달라도 대입될 수 있다.
   * 자바스크립트의 배열과 같은 원리.
   * C#으로 따지면 List<object> 정도 되는듯 하다.
   *
   * 인덱스는 0부터 시작하며, Java나 C#의 Collection API에서 쓸 수 있었던 util 함수들을 가지고 있다.
   */
  var list1 = [1, 2, 3];
  var list2 = [1, "str", false];
  var list3 = List();

  print(list1);
  print(list2);
  print(list1[0]);

  // 위의 예시와 다르게 요소의 자료형을 직접 지정해 줄 수 있다.
  var strList = List<String>();
  strList.add("str1");
  // strList.add(32142); <- 자료형이 달라서 안된다.

  /*
   * Map.
   *
   * Key - Value 형식의 자료형이다.
   * Json 이랑 똑같다.
   * C#에서의 Dictionary 와 같은 듯 하다.
   *
   * 자료형을 지정해주지 않는다면
   * 어떤 데이터든지 Key가 될 수 있고,
   * 어떤 데이터든지 Value가 될 수 있다.
   */
  var map1 = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  print(map1);


  // Key 나 Value 에는 아무 자료형이나 들어갈 수 있는 것 같다.
  var map2 = {
    0 : false,
    "0" : 432,
    true : "????",
    null : "이게 되겠냐"
  };
  // var map3 = Map<int, int>(); 처럼 Key, Value의 자료형을 직접 지정해 줄 수 있다.

  print(map2[0]);
  print(map2["0"]);
  print(map2[true]);
  print(map2[null]); // 와 이것도 출력이 되네
  print(map2[9999]); // 없는 요소에 대해서는 null 출력

  // 선언을 미리 하고 나중에 요소를 대입할 수 있다.
  var gifts = Map();

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
}