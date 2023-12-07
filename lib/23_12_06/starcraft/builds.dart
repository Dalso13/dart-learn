import 'package:untitled/23_12_06/starcraft/buliding.dart';
import 'package:untitled/23_12_06/starcraft/species.dart';

class ZergBuild extends Zerg implements Building{
  ZergBuild({required super.name, required super.hp});

}

class TerranBuild extends Terran implements Building{
  TerranBuild({required super.name, required super.hp});

}

class ProtossBuild extends Protoss implements Building{
  ProtossBuild({required super.name, required super.hp});

}