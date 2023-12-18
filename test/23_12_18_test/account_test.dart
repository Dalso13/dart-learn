import 'package:test/test.dart';
import 'package:untitled/23_12_18/account.dart';


main() {
  test('계자 이체가 잘 동작해야 한다' , () {

    Account a = Account.name('345', 1000);
    Account b = Account.name('한석봉', 0);
    
    // when (실행)
    a.transfer(b, 500);
    
    // then (검증)
    expect(a.balance, 500);
    expect(b.balance, 500);

    expect(() => a.transfer(b, 600), throwsException);
  });
}