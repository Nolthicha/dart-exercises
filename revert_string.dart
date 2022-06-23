String revert(String str) {
  return str.split('').reversed.join('');
}

void main() {
  print(revert('Hello'));
}
