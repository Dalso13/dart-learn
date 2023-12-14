import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;


main() async {
  final String path = "lib/23_12_14/http_exam/icon/";

  final imgData = await downloadImage("https://alimipro.com/favicon.ico");

  List<Future<dynamic>> multiple = [
    saveFile(imgData, "${path}icon1.ico"),
    saveFile(imgData, "${path}icon2.ico"),
    saveFile(imgData, "${path}icon3.ico")
  ];

  // 순차적으로
  final stopwatch = Stopwatch()..start();
  await saveFile(imgData, "${path}icon4.ico");
  await saveFile(imgData, "${path}icon5.ico");
  await saveFile(imgData, "${path}icon6.ico");

  print("순차적 걸린시간 : ${stopwatch.elapsed}");
  
  
  //병렬 처리
  final stopwatch2 = Stopwatch()..start();
  await Future.wait(multiple);

  print("병렬 걸린시간 : ${stopwatch2.elapsed}");

}

Future<Uint8List> downloadImage(String url) async {
  final img = await http.get(Uri.parse(url));

  return img.bodyBytes;
}

Future<File> saveFile(Uint8List bytes , String fileName) async {
  final File imgFile = File(fileName);

  await imgFile.writeAsBytes(bytes);

  return imgFile;
}