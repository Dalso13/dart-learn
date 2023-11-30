void main() {



  int method (int a , int b) {
    return a + b;
  }

  print(method(3,2));

  Person person = Person();

  person.a = 1;

  person.s();


}
class Person {
  late int a;

  void s(){
    print("a : $a");
  }

}