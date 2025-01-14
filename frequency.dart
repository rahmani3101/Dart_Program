import 'dart:io';

int countOccurrences(String str, String char)
{
  return str.split('').where((c) => c == char).length;
}

void main() 
{
  stdout.write("Enter a string: ");
  String str = stdin.readLineSync()!;

  stdout.write("Enter a character to count: ");
  String char = stdin.readLineSync()!;

  print('The character "$char" appears ${countOccurrences(str, char)} times in the string.');
}
