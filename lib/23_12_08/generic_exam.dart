class StringBox<E extends KeyType> {
  E _put;
  int padlock = 0;
  int button  = 0;
  int dial  = 0;
  int finger  = 0;

  StringBox(this._put);

  set setPut(E put){
    _put = put;
  }

  KeyType? get() {
    switch(_put) {
      case KeyType.padlock:
        padlock++;
        return padlock >= 1024 ? KeyType.padlock : null;
      case KeyType.button:
        button++;
        return button >= 10000 ? KeyType.button : null;
      case KeyType.dial:
        dial++;
        return dial >= 30000 ? KeyType.dial : null;
      case KeyType.finger:
        finger++;
        return finger >= 1000000 ? KeyType.finger : null;
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

  StringBox<KeyType> key = StringBox(KeyType.button);

  for(int i = 0; i < 9999; i++){
    key.get();
  }

  print(key.get());
}