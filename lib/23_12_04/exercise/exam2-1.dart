/*
이름을 가지는 Person 클래스를 작성하시오. Person 은 반드시 이름을 포함해야 합니다.
이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.
 */


main() {
  List<Person> persons = [];
  
  persons.add(Person("홍길동"));
  persons.add(Person("한석봉"));

  for (var person in persons) {
    print("이름 : ${person.name}");
  }

  for (int i = 0; i < persons.length; i++){
    print("이름 : ${persons[i].name}");
  }

  persons.forEach((var a) {
    print("이름 : ${a.name}");
  });


}

class Person {
  String name;

  Person(this.name);
}