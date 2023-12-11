class StrongBox<E> {
  E? _put;
  KeyType keyType;
  int _count = 0;

  StrongBox(this.keyType);

  void setPut(E put){
    _put = put;
  }

  E? get() {
    switch(keyType) {
      case KeyType.padlock:
        _count++;
        return _count >= 1024 ? _put : null;
      case KeyType.button:
        _count++;
        return _count >= 10000 ? _put : null;
      case KeyType.dial:
        _count++;
        return _count >= 30000 ? _put : null;
      case KeyType.finger:
        _count++;
        return _count >= 1000000 ? _put : null;
    }
  }

}

enum KeyType {
  padlock,
  button,
  dial,
  finger
}

main() {
  print(KeyType.values);

  StrongBox<int> key = StrongBox(KeyType.button);
  key.setPut(100);
  
  for(int i = 0; i < 9999; i++){
    key.get();
  }

  print(key.get());
}