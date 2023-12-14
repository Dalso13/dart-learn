import 'dart:convert';

import 'package:http/http.dart' as http;


// 임시로 이렇게 만듬 추후 수정 예정
main() async {
  final Mask mask = await getMaskInfo("http://104.198.248.76:3000/mask");
  
  for(Stores val in mask.stores){
    if(val.name != null &&
        val.created_at != null &&
        val.lng != null &&
        val.lat != null &&
        val.addr != null &&
        val.code != null &&
        val.remain_stat != null &&
        val.stock_at != null &&
        val.type != null) {
        print(val.toMap());
    }
  }
}

Future<Mask> getMaskInfo(String path) async {
  final response = await http.get(Uri.parse(path));

  final json = jsonDecode(utf8.decode(response.bodyBytes));

  final mask = Mask.fromMap(json);

  final jsonStores = mask.stores.map((e) => Stores.fromMap(e)).toList();

  return Mask(count: mask.count, stores: jsonStores);
}






class Mask {
  int count;
  List<dynamic> stores;

  Mask({
    required this.count,
    required this.stores,
  });

  Map<String, dynamic> toMap() {
    return {
      'count': this.count,
      'stores': this.stores,
    };
  }

  factory Mask.fromMap(Map<String, dynamic> map) {
    return Mask(
      count: map['count'] as int,
      stores: map['stores'] as List<dynamic>,
    );
  }
}

class Stores {
  String? addr;
  String? code;
  String? name;
  String? type;
  String? created_at;
  String? stock_at;
  String? remain_stat;

  double? lat,lng;

  Stores({
    required this.addr,
    required this.code,
    required this.name,
    required this.remain_stat,
    required this.type,
    required this.created_at,
    required this.stock_at,
    required this.lat,
    required this.lng,
  });

  Map<String, dynamic> toMap() {
    return {
      'addr': this.addr,
      'code': this.code,
      'name': this.name,
      'type': this.type,
      'created_at': this.created_at,
      'stock_at': this.stock_at,
      'remain_stat': this.remain_stat,
      'lat': this.lat,
      'lng': this.lng,
    };
  }

  factory Stores.fromMap(Map<String, dynamic> map) {
    return Stores(
      addr: map['addr'],
      code: map['code'],
      name: map['name'],
      type: map['type'],
      created_at: map['created_at'],
      stock_at: map['stock_at'],
      remain_stat: map['remain_stat'],
      lat: map['lat'],
      lng: map['lng'],
    );
  }
}