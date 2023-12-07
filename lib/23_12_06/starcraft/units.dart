import 'package:untitled/23_12_06/starcraft/buliding.dart';
import 'package:untitled/23_12_06/starcraft/species.dart';

class ZergUnit extends Zerg implements Unit{
  ZergUnit({required super.name, required super.hp});

}

class TerranUnit extends Terran implements Unit{
  TerranUnit({required super.name, required super.hp});

}

class ProtossUnit extends Protoss implements Unit{
  ProtossUnit({required super.name, required super.hp});

}