class Test {
  int age;
  String name;

  Test({required this.name , required this.age});

  Test copyWith({
    int? age,
    String? name,
  }) {
    return Test(
      age: age ?? this.age,
      name: name ?? this.name,
    );
  }
}

main () {
  List<Test> test = [Test(name : "장동완" , age : 1),Test(name : "아서스" , age : 1)];

  test.sort((a,b) {
      int num = a.name.compareTo(b.name);
      if(num == 0){
        return a.age.compareTo(b.age);
      } else {
        return num;
      }
  });

  print(test);
}