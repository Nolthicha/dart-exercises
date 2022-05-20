class PascalsTriangle {
  List<int> preRow = [];
  int getElement(int index) => preRow[index - 1] + preRow[index];

  List<int> generateInnerRows(int row) {
    var innerRow = List.generate(
      row + 1,
      (index) => (index == 0 || index == row) ? 1 : getElement(index),
    );

    preRow = [...innerRow];
    return innerRow;
  }

  List<List<int>> rows(int numberOfRows) =>
      List.generate(numberOfRows, (row) => generateInnerRows(row));
}

void main() {
  final pascalsTriangle = PascalsTriangle();
  final pas = pascalsTriangle.rows(6);

  print(pas);

  // final lst = [1, 2, 3, 4, 5];

  // final take = lst.take(2);
  // final skip = lst.skip(1);
  // final reduce = lst.reduce((p, c) {
  //   final total = p + c;
  //   return total;
  // });

  // print(reduce);
}
