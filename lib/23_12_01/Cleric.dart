import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;
  static final int maxHp = 50;
  static final int maxMp = 10;

  Cleric(
    this.name ,{
      this.hp = 50,
      this.mp = 10,
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

