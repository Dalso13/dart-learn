import 'dart:math';

class Cleric{
  String? name;
  int _hp = 50;
  int _mp = 10;
  final int maxHp = 50;
  final int maxMp = 10;

  void selfAid(){
    _mp -= 5;
    _hp = maxHp;
  }

  int pray(int a) {
    int ran = Random().nextInt(3);
    int recovery = ran + a;
    _mp += recovery;

    if(_mp > maxMp){
      _mp = maxMp;
    }

    return recovery;
  }
}