import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;
  static const int maxHp = 50;
  static const int maxMp = 10;

  Cleric(
    this.name ,{
      this.hp = maxHp,
      this.mp = maxMp,
  });

  void selfAid() {
    if (mp < 5) {
      return;
    }
    mp -= 5;
    hp = maxHp;
  }

  int pray(int a) {
    int ran = Random().nextInt(3);
    int recovery = ran + a;

    if (recovery + mp > maxMp) {
      recovery = maxMp - mp;
      mp = maxMp;
    } else {
      mp += recovery;
    }

    return recovery;
  }
}

