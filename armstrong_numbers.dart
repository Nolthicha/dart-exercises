import 'dart:math';

void main() {
  bool isArmstrongNumber1(int number) {
    final textNumber = number.toString();

    return number ==
        textNumber
            .split('')
            .map((e) => pow(int.parse(e), textNumber.length))
            .reduce((value, element) => value + element);

    // return number ==
    //     textNumber.split('').map((e) {
    //       final a = pow(int.parse(e), textNumber.length);
    //       print('e : $e');
    //       print('a : $a');

    //       return pow(int.parse(e), textNumber.length);
    //     }).reduce(
    //       (value, element) {
    //         print('value : $value');
    //         print('element : $element');

    //         final b = value + element;
    //         print('b : $b');

    //         return value + element;
    //       },
    //     );
  }

  bool isArmstrongNumber2(int number) {
    final length = number.toString().length;

    final armstrongNumber =
        number.toString().split('').fold<int>(0, (total, element) {
      final value = pow(int.parse(element), length).toInt();

      return total + value;
    });

    return number == armstrongNumber;
  }

  print(isArmstrongNumber1(153));
  print(isArmstrongNumber2(135));
}
