import 'dart:convert';

main() {
  final String json = '''{
 "collectionChartDataList": [
   {
     "collectionName": "collectionName",
     "collectionSalePrice": null
   },
   {
     "collectionName": "collectionName",
     "collectionSalePrice": [
       {
         "price": 59.75,
         "cvtDatetime": "2023-03-26T08:08:35"
       },
       {
         "price": 60.00,
         "cvtDatetime": "2023-03-26T08:08:45"
       }
     ]
   }
 ]
}''';

  // null safety 가 문제일려나??
  final json2 = jsonDecode(json);
  
  final a = A.fromMap(json2);

  print(a.toMap());
}

class A {
  List<dynamic> collectionChartDataList;

  Map<String, dynamic> toMap() {
    return {
      'collectionChartDataList': this.collectionChartDataList,
    };
  }

  factory A.fromMap(Map<String, dynamic> map) {
    return A(
      collectionChartDataList: map['collectionChartDataList'] as List<dynamic>,
    );
  }

  A({
    required this.collectionChartDataList,
  });
}
class B {
  String collectionName;
  List<dynamic>? collectionSalePrice;

  factory B.fromMap(Map<String, dynamic> map) {
    return B(
      collectionName: map['collectionName'] as String,
      collectionSalePrice: map['collectionSalePrice'] as List<dynamic>,
    );
  }

  B({
    required this.collectionName,
    this.collectionSalePrice,
  });
}
class C {
  double price;
  DateTime cvtDatetime;


  factory C.fromMap(Map<String, dynamic> map) {
    return C(
      price: map['price'] as double,
      cvtDatetime: map['cvtDatetime'] as DateTime,
    );
  }

  C({
    required this.price,
    required this.cvtDatetime,
  });
}
