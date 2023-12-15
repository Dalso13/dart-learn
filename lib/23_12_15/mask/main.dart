import 'package:untitled/23_12_15/mask/data_source/mask_api.dart';
import 'package:untitled/23_12_15/mask/dto/mask_dto.dart';
import 'package:untitled/23_12_15/mask/mapper/mask_mapper.dart';
import 'package:untitled/23_12_15/mask/model/store.dart';

main() async {
  final maskApi = MaskApi();
  
  final MaskDto maskDto = await maskApi.getMaskInfoResult();
  
  List<Store> stores = maskDto.stores?.map((e) => e.toStore())
                              .toList() ?? [];
  
  print(stores.toString());
}