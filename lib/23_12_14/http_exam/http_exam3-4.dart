import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

main() async {
  final imgFile = await saveFile(
      await downloadImage("https://alimipro.com/favicon.ico"),
      "lib/23_12_14/http_exam/icon.ico");
  
  print("파일 크기 : ${await imgFile.length()}bytes");
}


Future<Uint8List> downloadImage(String url) async {
  final img = await http.get(Uri.parse(url));

  return img.bodyBytes;
}

Future<File> saveFile(Uint8List bytes , String fileName) async {
  final File imgFile = File(fileName);


  print("다운로드 시작");
  final stopwatch = Stopwatch()..start();

  await imgFile.writeAsBytes(bytes);

  print("다운로드 끝");
  print("===========");
  print("소요시간 : ");
  print("소요시간 : ${stopwatch.elapsed}");

  return imgFile;
}