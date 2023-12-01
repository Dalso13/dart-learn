import 'dart:math';

class Cleric{
  String? name;
  int _hp = 50;
  int _mp = 10;
  final int maxHp = 50;
  final int maxMp = 10;

  void selfAid(){
    if(_mp < 5){
      return;
    }
    _mp -= 5;
    _hp = maxHp;
  }

  int pray(int a) {
    int ran = Random().nextInt(3);
    int recovery = ran + a;

    if(recovery + _mp > maxMp){
      recovery = maxMp - _mp;
      _mp = maxMp;
    } else {
      _mp += recovery;
    }

    return recovery;
  }
}