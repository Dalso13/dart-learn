import 'package:test/test.dart';
import 'package:untitled/23_12_18/exam/exam3.dart';

main() {
  test("최대값이 나와야한다.", () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
  });
}