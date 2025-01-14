import 'dart:io';

int reverseNumber(int number) 
{
  int reversed = 0;
  while (number > 0) 
  {
    reversed = reversed * 10 + (number % 10);
    number ~/= 10;
  }
  return reversed;
}

void main() 
{
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  print('Reversed number is: ${reverseNumber(number)}');
}
