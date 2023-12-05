// 11- 1 답
  // 2, 3, 5

// 11-2 답
  // 1. p : 전자기기 , c : 스마트폰
  // 2. p : 이동수단 , c : 버스
  // 3. p : 정보 , c : 전자 사전

// 11-3
main() {
  PoisonSlime slime = PoisonSlime("장동완");

  slime.attack(Hero("용사"));
  print(slime.poison);
}


class Hero{
  String name;
  int hp = 50;

  Hero(this.name);

}

class Slime {
  int hp = 50;
  final String suffix;
  
  Slime(this.suffix);
  
  void attack(Hero hero){
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int _poison = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero){
    super.attack(hero);

    if(_poison > 0){
      print('추가로, 독 포자를 살포했다!');
      int a = (hero.hp * 0.2).floor();
      print('$a 포인트의 데미지 ');
      hero.hp -= a;
      _poison--;
    }
  }

  get poison{
    return _poison;
  }

}