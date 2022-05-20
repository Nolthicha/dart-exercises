void main() {
  int hamming(String s1, String s2) {
    if (s1.length != s2.length) {
      throw ArgumentError(
        "Strings be equal length, not ${s1.length} and ${s2.length}",
      );
    }

    print(Iterable<int>.generate(s1.length).where((i) => s1[i] != s2[i]));

    return Iterable<int>.generate(s1.length)
        .where((i) => s1[i] != s2[i])
        .length;
  }

  print(hamming('12344', '12355'));
}
