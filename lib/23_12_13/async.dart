main() {
    Future<void> test() async{
      List<Future<int>> futures = [
        getInt1(),
        getInt2(),
        getInt3(),
        getInt4(),
        getInt5()

      ];

      List<int> results = await Future.wait(futures);

      print(results);
    }

    test();
}

Future<int> getInt1() async {
  await Future.delayed(Duration(seconds: 1));
  return 1;
}
Future<int> getInt2() async {
  await Future.delayed(Duration(seconds: 1));
  return 2;
}
Future<int> getInt3() async {
  await Future.delayed(Duration(seconds: 1));
  return 3;
}
Future<int> getInt4() async {
  await Future.delayed(Duration(seconds: 1));
  return 4;
}
Future<int> getInt5() async {
  await Future.delayed(Duration(seconds: 1));
  return 5;
}
