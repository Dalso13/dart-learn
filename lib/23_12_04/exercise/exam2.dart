main(){
  /*
    대한민국의 도시 이름 모음 (순서 상관 없음)
    10명 학생의 시험 점수
    대한민국의 도시별 인구수 (순서 상관 없음)
  */

  //1.
    Set<String> set1 = {};
  //2
  // 사용할 수 있는 게 많아 보이지만 이게 원하는 형태 같아 보임
    List<Test> list2 = [];
  //3
    Map<String,int> map3 = {};
}

class Test {
  String? name;
  int? score;

  Test({
    this.name,
    this.score,
  });
}