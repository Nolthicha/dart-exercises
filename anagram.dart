void main() {
  String makeKey(String word) => (word.toLowerCase().split('')..sort()).join();

  List<String> findAnagrams(String word, List<String> dict) {
    String key = makeKey(word);

    print('key : $key');

    return dict.where((check) {
       print('check : $check');

      return (word.toLowerCase() != check.toLowerCase()) &&
          (key == makeKey(check));
    }).toList();
  }

  print(findAnagrams("listen", ["enlists","google","inlets","banana"]));
}
