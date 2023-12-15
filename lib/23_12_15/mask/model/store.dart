import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

@JsonSerializable(explicitToJson: true)
class Store{
  String name,addr,remain_stat;

  Store({
    required this.name,
    required this.addr,
    required this.remain_stat,
  });

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);

  @override
  String toString() {
    return 'Store{name: $name, address: $addr, stock: $remain_stat}';
  }

}