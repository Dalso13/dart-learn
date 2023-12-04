main() {
  List<int> numb = [];
  
  numb.add(1);
  numb.add(2);
  numb.add(3);
  
  // 타입 정하지않고 만들순 있는데 굉장히 안좋은 방법 (다이나믹)
  List numb2 = [];
  numb2.add(1);
  numb2.add(null);
  numb2.add("str");


  Set<int> setNum = {};

  setNum.add(1);
  setNum.add(2);
  setNum.add(1);
  // 이터레이터 사용
  var itr = setNum.iterator;
  while(itr.moveNext()){
    itr.current;
  }

  // for in 문 사용
  for (var value in setNum) {

  }

  Map<String,int> map = {};


}