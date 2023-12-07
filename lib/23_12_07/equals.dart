class Test {
  String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Test && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;

  Test(this.name);
}

main() {

  final h1 = Test("1");
  final h2 = Test("1");

  print(h1 == h2);
}