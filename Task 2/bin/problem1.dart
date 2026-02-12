import 'dart:io';

void main() {
  stdout.write("Enter the number :");
  double? num = double.parse(stdin.readLineSync().toString());
  List numbers = [];
  while (num! % 2 == 0) {
    num = num / 2;
    numbers.add(num.toInt());
  }
  if (num % 2 != 0) {
    print("the number has no divisors");
  }
  print(numbers);
}
