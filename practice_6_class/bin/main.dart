main () {

  var player1 = new Player("son");
  var player2 = new Player.unknown();
  var player3 = new Player.test("dummy player", -1, 0.0);
  var player4 = new Player.superUser("master");

  print(player1.name);
  print(player2.name);
  print(player3.name);
  print(player4.name);
}

class Player {

  String name;

  int backNumber;

  double speed;

  /// 기본 생성자
  Player(String name) {
    this.name = name;
    this.backNumber = 7;
    this.speed = 5.5;
  }

  /// Dart는 메소드에 이어서 생성자 오버로딩마저 지원하지 않는다.
  /// 클래스명 뒤에 .을 붙여 별도의 메소드를 만드는 것처럼 작성하면 named constructor가 완성된다.
  /// 이녀석도 일단은 생성자다.
  Player.unknown() {
    this.name = "unknown";
    this.backNumber = 7;
    this.speed = 5.5;
  }

  /// 생성자의 매개변수에 바로 this 키워드를 붙여
  /// 객체 생성시 멤버가 바로 매핑되게 할 수도 있다.
  Player.test(this.name, this.backNumber, this.speed);

  /// 받은 매개변수를 다른 생성자로 넘겨주는 방법도 있다.
  /// redirecting constructor라고 하며 Java에서 this나 super 키워드로 다른 생성자를 호출하는 것과 비슷한 원리이다.
  Player.superUser(String name) : this.test(name, 7, 99.9);
  // 하지만 다른점은 아래와 같이 추가적인 코드실행이 불가능하다.
  // Player.superUser(String name) : this.test(name, 7, 99.9) { ... }
}