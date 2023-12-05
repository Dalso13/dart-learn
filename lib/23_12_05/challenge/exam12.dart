// 가
abstract class Asset{
  String name;
  int price;

  Asset({
    required this.name,
    required this.price,
  });
}

// 나 : 무형자산
abstract class IntangibleAsset extends Asset{

  IntangibleAsset({
    required super.name,
    required super.price,
  });
}
// 유형자산
abstract class TangibleAsset extends Asset{
  String color;

  TangibleAsset({
    required super.name,
    required this.color,
    required super.price,
  });
}



class Book extends TangibleAsset {
  String isbn;

  Book(
      {required super.name,
      required super.color,
      required super.price,
      required this.isbn});
}

class Computer extends TangibleAsset {
  String makerName;

  Computer(
      {required super.name,
      required super.color,
      required super.price,
      required this.makerName});
}
