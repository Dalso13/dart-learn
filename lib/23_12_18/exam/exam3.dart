int findMax(List<int> a) {
  return a.reduce((value, element) => value > element ? value : element);
}