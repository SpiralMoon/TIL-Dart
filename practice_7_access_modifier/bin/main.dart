import 'AccessModifierTest.dart';

main () {

  var test = new AccessModifierTest();

  print(test.name);
  //print(test._mind); <- _로 보호되어있는 멤버라서 현 위치에서 호출 불가능
}