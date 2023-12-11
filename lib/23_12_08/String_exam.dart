main() {
  Word word = Word(word: "hello");

  print(word.isVowel(2));
  print(word.isConsonant(2));
}

class Word {
  String word = '';
  final List<String> checked = ['a', 'e', 'i', 'o', 'u'];

  Word({
    required this.word,
  });

  bool isVowel(int i) {
    bool isVowel = false;

    if (i > word.length || i < 1) {
      print("잘못된 인자");
    } else {
      for (var check in checked) {
        if (word.substring(i - 1, i).toLowerCase() == check) {
          isVowel = true;
          break;
        }
      }
    }
    return isVowel;
  }

  bool isConsonant(int i) {
    return !isVowel(i);
  }
}
