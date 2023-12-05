abstract class TangibleAsset {
  String name, color;
  int price;

  TangibleAsset({
    required this.name,
    required this.color,
    required this.price,
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
