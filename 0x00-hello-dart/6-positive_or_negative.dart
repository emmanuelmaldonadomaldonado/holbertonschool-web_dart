import 'dart:io';

void main(List<String> arguments) {
  int number = int.parse(arguments[0]);

  if (number > 0) {
    print('$number is positive');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('$number is zero');
  }
}