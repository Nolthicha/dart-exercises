class DifferenceOfSquares {
  Iterable<int> list(int val) => Iterable.generate(val, (i) => i + 1);
  int square(int val) => val * val;
  int sum(left, right) => left + right;

  int squareOfSums(int val) => square(list(val).reduce(sum));
  int sumOfSquares(int val) => list(val).map(square).reduce(sum);

  int difference(int val) => squareOfSums(val) - sumOfSquares(val);
}

void main() {
  final diff = DifferenceOfSquares();

  print('list :${diff.list(10)}');
  print('square :${diff.square(10)}');
  print('sum :${diff.sum(10, 10)}');

  print('squareOfSums :${diff.squareOfSums(10)}');
  print('sumOfSquares :${diff.sumOfSquares(10)}');

  print('difference :${diff.difference(10)}');
}
