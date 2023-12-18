import 'package:test/test.dart';
import 'package:untitled/23_12_18/exam/exam2.dart';

void main () {
   test("짝수인지 홀수인지 체크", (){
     expect(isEven(10), true);
     expect(isEven(9), false);
     expect(isEven(0), true);
   });
}