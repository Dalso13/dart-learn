
import 'package:intl/intl.dart';

class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.comment,
    required this.publishDate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          DateFormat('yyyy-MM-dd').format(publishDate) ==
              DateFormat('yyyy-MM-dd').format(other.publishDate);

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;

  Book copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate,
    );
  }
}

main() {
  Book book1 = Book(
      title: "오준석의 플러터 생존 코딩",
      comment: "good",
      publishDate: DateTime.parse('2021-05-28'));

  Book book2 = book1.copyWith();
  Book book3 = book1.copyWith(
      comment: "great", publishDate: DateTime.parse('2022-06-28'));

  Set<Book> set = {book1, book2, book3};

  print(book1 == book2);
  print(book1 == book3);
  print(set.length);

  List<Book> list = [book1, book2, book3];

  list.sort((a, b) {
    String before = '${a.publishDate.year}${a.publishDate.month}${a.publishDate.day}';
    String after = '${b.publishDate.year}${b.publishDate.month}${b.publishDate.day}';
    return -(before.compareTo(after));
  });

  for (var value in list) {
    print(value.publishDate);
  }
}

// 생성자 json 느낌으로 안만들고 기존처럼 만들때

/*
class Book2 {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book2(this.title, this.publishDate, this.comment);

  Book2 copyWith(
    String? title,
    DateTime? publishDate,
    String? comment,
  ) {
    return Book2(
     title ?? this.title,
     publishDate ?? this.publishDate,
     comment ?? this.comment,
    );
  }
}
*/
