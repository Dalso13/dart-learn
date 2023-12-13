
import 'dart:io';

main() {



    Future<void> asyncExam() async {
      final file1 = File("lib/23_12_13/exam/sample.csv");
      final file2 = File("lib/23_12_13/exam/sample_copy.csv");

      // if(await file1.exists()){
      //   file1.readAsString()
      //       .then((value) => file2.writeAsString(value)
      //       .then((_) => file2.readAsString())
      //       .then((value) => print(value)));
      // }

      if(await file1.exists()){
        final val = await file1.readAsString();

        await file2.writeAsString(val.replaceAll("한석봉", "김석봉"));

        print(await file2.readAsString());
      }
    }

    asyncExam();



}
