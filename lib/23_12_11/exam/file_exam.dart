
import 'dart:io';

main() {

  void copy(String source, String target) {
    File file1 = File(source);
    File file2 = File(target);

    file2.writeAsStringSync(file1.readAsStringSync());

   print(file2.readAsStringSync());
  }

  copy("save.txt", "copy.txt");

}
