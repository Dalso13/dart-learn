class Test{
  int _hp = 50;

  //다른 언어에서 쓰는법
  /*int getHp() => _hp;
  void setHp(int a) => {
    _hp = _hp + a
  };*/
  
  
  // dart 사용법 프로퍼티
  int get hp => _hp;
  set hp(int a) => {
    _hp = _hp + a
  };

}