import 'dart:io';

main() {
  String path = "save.txt";
  final file = File(path);

  if(file.existsSync()){  // 파일이 있는지 없는지 확인
    file.writeAsStringSync("hello world", mode: FileMode.append); // 이어쓰기
    file.writeAsStringSync("hello world"); // 덮어쓰기

    print(file.readAsStringSync());
  }

}