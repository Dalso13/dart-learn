import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader.toJson(),
    };
  }

}

main(){
  final Department dep = Department("총무부", Employee("홍길동",41));

  final File file = File("company.txt");

  String put = dep.toJson().toString();

  file.writeAsStringSync(put);


}