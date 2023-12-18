import 'package:test/test.dart';
import 'package:untitled/23_12_18/exam/exam1.dart';


main() {
    test("변환이 잘 되는지", () {
        // expect 활용해서 예외나는걸 정배로 하려했는데
        // 상위 클래스에서 나는 오류라 처리하기가 힘듬 ㅜㅜ
        final Bank bank = bankReturn(testBank());
    });
}

String testBank() {
  return '''{
  "name": "홍길동",
  "address": "서울시 어쩌구 저쩌구",
  "phone": "010-1111-2222"
  }''';
}