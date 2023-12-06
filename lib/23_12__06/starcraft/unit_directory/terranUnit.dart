import 'package:untitled/23_12__06/starcraft/cure.dart';
import 'package:untitled/23_12__06/starcraft/units.dart';

class Medic extends TerranUnit implements Organism {
  Medic({required super.name, required super.hp});

}

class Marin extends TerranUnit implements Organism {
  Marin({required super.name, required super.hp});

}

class Tank extends TerranUnit implements Machine {
  Tank({required super.name, required super.hp});

}
class Vultr extends TerranUnit implements Machine {
  Vultr({required super.name, required super.hp});

}
class Scv extends TerranUnit implements Organism {
  Scv({required super.name, required super.hp});

}