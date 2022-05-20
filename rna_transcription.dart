void main() {
  String toRna1(String dna) => dna.replaceAllMapped(
        RegExp("."),
        (m) =>
            {
              "G": "C",
              "C": "G",
              "T": "A",
              "A": "U",
            }[m.group(0)] ??
            '',
      );

  final aa = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'}['A'];

  // print(toRna('GCTA'));
  // print(aa);

  String toRna2(String dna) {
    Map<String, String> _lookup = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'};

    return dna.split('').map((e) => _lookup[e]).join('');
  }

   print(toRna2('GCTA'));
}
