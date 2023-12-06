
class Star {
  String name;
  int hp;

  Star({
    required this.name,
    required this.hp,
  });
}


class Zerg extends Star{
  Zerg({required super.name, required super.hp});

}

class Protoss extends Star{
  Protoss({required super.name, required super.hp});

}

class Terran extends Star{
  Terran({required super.name, required super.hp});

}