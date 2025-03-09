import 'dart:io';

void main(List<String> arguments) {
  int nb = int.parse(arguments[0]);
  assert(nb >= 80, "The score must be bigger or equal to 80");
  print("You Passed");
}