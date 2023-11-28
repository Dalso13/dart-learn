class Calculateor {

  int plus (int a, int b) => a+b;

  int minus (int a, int b) => a-b;

  int num1 (int a, int b) => a*b;

  double num2 (int a, int b) => a/b;

}

main() {
  Calculateor calculateor = Calculateor();

  print(calculateor.plus(1, 2));
  print(calculateor.minus(1, 2));
  print(calculateor.num1(1, 2));
  print(calculateor.num2(1, 2));
}