void main() {
  final text = 'ColorFilter.mode(Color(0xfff47b20), BlendMode.srcIn)';
  final text2 =
      'ColorFilter.matrix([1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0])';
  final aa = text.split('ColorFilter.');
  final mode = aa[1];

  final reg = RegExp(r'(?<=\.).+?(?=\()');
  // final type = mode.replaceAll(reg, '');
  final type = reg.stringMatch(text2);
  // final test = reg.stringMatch(mode);
  final tt = reg.stringMatch(mode);

  final color = RegExp(r'0[xX][0-9a-fA-F]+').stringMatch(text);
  final hexColor = color?.split('0x').last;

  final blenMode = RegExp(r'(?<=\BlendMode.).+?(?=\))').stringMatch(text);

  final matrix = RegExp(r'(?<=\[).+?(?=\])').stringMatch(text2)?.split(',');

  // Color\(\w+\)

  print(blenMode);
}
