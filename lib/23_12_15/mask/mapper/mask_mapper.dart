

import 'package:untitled/23_12_15/mask/dto/mask_dto.dart';
import 'package:untitled/23_12_15/mask/model/store.dart';

extension StoreMapper on Stores {
  Store toStore() {
    return Store(
        name: name ?? '',
        addr: addr ?? '주소 없음',
        remain_stat: remainStat ?? '매진'
    );
  }
}