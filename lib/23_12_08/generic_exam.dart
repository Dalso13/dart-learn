class StringBox<E> {
  E? _put;


  set put(E put){
    _put = put;
  }

  get get => _put;
}

