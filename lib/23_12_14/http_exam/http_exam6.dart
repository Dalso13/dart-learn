import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

main() async {
  
  // url이 엉망진창일때만 예외처리
  // 이미지데이터가 없는 url 처리는 모르겠음 ㅠㅠ
  final imgFile = await saveFile(
      await downloadImage("httpsasdasd"),
      "lib/23_12_14/http_exam/exam6.ico");
}

// url 검증
Future<http.Response> urlParse(String url) async{
  try {
    return await http.get(Uri.parse(url));
  } catch (e) {
    print("잘못된 링크!");
    return await http.get(Uri.parse("https://alimipro.com/favicon.ico"));
  }
}

Future<Uint8List> downloadImage(String url) async {
    final img = await urlParse(url);

    return img.bodyBytes;
}

Future<File> saveFile(Uint8List bytes , String fileName) async {
  final File imgFile = File(fileName);

  await imgFile.writeAsBytes(bytes);

  return imgFile;
}