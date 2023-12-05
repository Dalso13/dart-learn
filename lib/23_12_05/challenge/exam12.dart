import 'package:untitled/23_12_05/challenge/exam12_3.dart';


// 가
abstract class Asset {
  String name;
  int price;

  Asset({
    required this.name,
    required this.price,
  });
}

// 나 : 무형자산
abstract class IntangibleAsset extends Asset {
  IntangibleAsset({
    required super.name,
    required super.price,
  });
}

// 유형자산
abstract class TangibleAsset extends Asset implements Thing {
  String color;
  double _weight;

  TangibleAsset({
    required super.name,
    required this.color,
    required double weight,
    required super.price,
  }) : _weight = weight;

  @override
  set setWeight(double weight) {
    _weight = weight;
  }
  @override
  double get getWeight => _weight;
}

class Book extends TangibleAsset {
  String isbn;

  Book(
      {required super.name,
      required super.color,
      required super.price,
      required super.weight,
      required this.isbn});
}

class Computer extends TangibleAsset {
  String makerName;

  Computer(
      {required super.name,
      required super.color,
      required super.price,
      required super.weight,
      required this.makerName});
}
