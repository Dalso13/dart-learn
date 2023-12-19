String reverseString(String str) {
  return str.split("").reduce((value, element) => element + value);
}