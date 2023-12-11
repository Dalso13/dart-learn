
import 'dart:io';

main() {

  //파일을 복사하는 함수를 작성하시오
  void copy(String source, String target) {
    File file1 = File(source);
    File file2 = File(target);

    file2.writeAsStringSync(file1.readAsStringSync());

   print(file2.readAsStringSync());
  }

  copy("save.txt", "copy.txt");

}
