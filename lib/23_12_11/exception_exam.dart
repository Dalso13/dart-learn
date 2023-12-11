main() {

  final numString = '1.s';
  int num;
  try {
    num = int.parse(numString);
  } catch(e) {
    num = 0;
    print(e);
  }
  print(num);
}