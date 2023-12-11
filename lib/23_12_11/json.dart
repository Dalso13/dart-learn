import 'dart:convert';

main() {
  final name = {
    "이름" : 1,
  };

  String json = '{ "name" : "장" }';

  final json2 = jsonDecode(json);  // json String을 json map 형태로 파싱

  print(json2.runtimeType);
}


class Test {
  int age;
  String name;

  Test({required this.name , required this.age});

  Map<String, dynamic> toMap() {
    return {
      'age': this.age,
      'name': this.name,
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) { // 생성자
    return Test(
      age: map['age'] as int,
      name: map['name'] as String,
    );
  }
}