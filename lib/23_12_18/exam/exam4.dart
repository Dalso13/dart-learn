String reverseString(String a) {
  return a.split("").reduce((value, element) => element + value);
}