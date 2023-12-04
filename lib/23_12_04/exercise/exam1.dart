/*
  마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
  지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
  마법사의 지팡이는 null 일 수 없다.
  마법사의 MP는 0 이상이어야 한다.
  HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
 */
main() {
  Wizard wizard = Wizard(
    wand: Wand(name: "null", power: 100),
    name: "3333",
    hp: -1,
    mp: 0,
  );

  // 1번 예외처리
  if (wizard.name == null || wizard.name!.length < 3) {
    throw Exception("It's wrong wizard name");
  }
  // 3번 예외처리
  if (wizard.wand == null){
    throw Exception("It shouldn't be wand is null");
  }
  // 1번 예외처리
  if (wizard.wand!.name == null || wizard.wand!.name!.length < 3) {
    throw Exception("It's wrong wand name");
  }
  // 2번 예외처리
  if (wizard.wand!.power < 0.5 || wizard.wand!.power > 100) {
    throw Exception("It's wrong power value");
  }
  // 4번 예외처리
  if (wizard.mp <= 0) {
    throw Exception("It's wrong mp value");
  }
  
  // 5번 문제
  wizard.hpUp();
  print("clear");
}

class Wizard {
  String? name;
  int hp;
  int mp;
  Wand? wand;

  Wizard({
    required this.wand,
    required this.name,
    required this.hp,
    required this.mp,
  });

  void hpUp() {
    if(hp < 0){
      print("hpUp");
      hp = 0;
    }
  }
}

class Wand {
  String? name;
  double power;

  Wand({required this.name, required this.power});
}
