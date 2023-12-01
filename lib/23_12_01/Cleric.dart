import 'dart:math';

class Cleric {
  String name;
  late int _hp;
  late int _mp;
  static final int maxHp = 50;
  static final int maxMp = 10;

  Cleric(
    this.name ,{
      int hp = 50,
      int mp = 10,
  }) {
    _hp = hp;
    _mp = mp;
  }

  void selfAid() {
    if (_mp < 5) {
      return;
    }
    _mp -= 5;
    _hp = maxHp;
  }

  int pray(int a) {
    int ran = Random().nextInt(3);
    int recovery = ran + a;

    if (recovery + _mp > maxMp) {
      recovery = maxMp - _mp;
      _mp = maxMp;
    } else {
      _mp += recovery;
    }

    return recovery;
  }
}

