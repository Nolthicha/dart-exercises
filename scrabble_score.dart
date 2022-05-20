void main() {
  int _score(String word) {
    const letterValues = {
      'a': 1,
      'e': 1,
      'i': 1,
      'o': 1,
      'u': 1,
      'l': 1,
      'n': 1,
      'r': 1,
      's': 1,
      't': 1,
      'd': 2,
      'g': 2,
      'b': 3,
      'c': 3,
      'm': 3,
      'p': 3,
      'f': 4,
      'h': 4,
      'v': 4,
      'w': 4,
      'y': 4,
      'k': 5,
      'j': 8,
      'x': 8,
      'q': 10,
      'z': 10,
    };

    return word
        .toLowerCase()
        .split('')
        .map<int>((e) => letterValues[e] ?? 0)
        .reduce((value, element) => value + element);
  }

  int score1(String word) {
    Map<String, int> letterValues = {
      "AEIOULNRST": 1,
      "DG": 2,
      "BCMP": 3,
      "FHVWY": 4,
      "K": 5,
      "JX": 8,
      "QZ": 10
    };

    return word.split('').fold<int>(0, (total, letter) {
      var valuesKey = letterValues.keys
          .singleWhere((key) => key.contains(letter.toUpperCase()));

      int score = letterValues[valuesKey] ?? 0;
      return total + score;
    });
  }

  int score2(String word) {
    Map<String, int> letterValues = {
      "a": 1,
      "b": 3,
      "c": 3,
      "d": 2,
      "e": 1,
      "f": 4,
      "g": 2,
      "h": 4,
      "i": 1,
      "j": 8,
      "k": 5,
      "l": 1,
      "m": 3,
      "n": 1,
      "o": 1,
      "p": 3,
      "q": 10,
      "r": 1,
      "s": 1,
      "t": 1,
      "u": 1,
      "v": 4,
      "w": 4,
      "x": 8,
      "y": 4,
      "z": 10
    };

    return word.split('').fold(0, (total, letter) {
      int score = letterValues[letter] ?? 0;
      return total + score;
    });
  }

  print('score1 : ${score1('aeiouq')}');
  print('score2 : ${score2('aeiouq')}');

  // final numbers = [10, 9, 8, 7];
  // const initialValue = 100;
  // final result = numbers.fold<int>(initialValue, (previousValue, element) {
  //   previousValue;
  //   element;

  //   return previousValue + element;
  // });

  // print(result);
}
