import 'dart:io';

void main(List<String> args) {
  print('Enter your Name:');

  var name = stdin.readLineSync();
  print("Hello $name");
}
