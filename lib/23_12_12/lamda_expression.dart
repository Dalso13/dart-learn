main() {
  var list = <int>[1, 2, 3, 4, 5];

  var itr = list.where((a) => a % 2 == 0); //Iterable 타입 List 아님

  itr.forEach(print);
  
  itr.map((e) => '숫자 : $e').forEach(print); // 받은 값을 활용하여 원하는 형태로 리턴
  itr.map((e) => '숫자 : $e').toList(); // 리스트로 변환 toSet 도 있음
  

}