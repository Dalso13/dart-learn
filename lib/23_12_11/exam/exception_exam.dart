main() {

  final numString = '1.s';
  int num;


  // try-catch() 문을 사용하여 예외처리를 하시오
  try {
    num = int.parse(numString);
  } catch(e) {
    num = 0;
    print(e);
  }
  print(num);
}