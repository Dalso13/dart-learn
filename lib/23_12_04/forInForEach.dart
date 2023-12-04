main() {
  List<int> numb = [1,2,3,4];

  // for in
  for (var value in numb) {

  };

  // for Each 
  // 특징 : 도중에 중지가 안되서 if를 통한 break가 안된다
  numb.forEach((var a) {

  });
  
  // 매개변수가 하나인 void함수를 넣어서 간결하게 사용가능
  // print(); 함수를 넣음
  numb.forEach(print);

}