Future<String> timeoutFutuere() async {
  await Future.delayed(Duration(seconds: 6));

  return 'ok';
}


main() {
  // 다음 Future 함수를 실행하고 5초 이내에 완료되지 않으면 “timeout”을 출력하시오.
  
  // catchError 활용
  /*timeoutFutuere().timeout(Duration(seconds: 5))
      .then((value) => print(value))
      .catchError((_) => print("timeout"));*/


  Future<void> timeoutReturn() async {
    final answer = await timeoutFutuere()
        .timeout(Duration(seconds: 5), onTimeout: () => "timeout");

    print(answer);
  }

  timeoutReturn();
}