import 'dart:io';

int factorial(int n) 
{
  if (n == 0) return 1;
  return n * factorial(n - 1);
}

void main() 
{
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  print('Factorial of $number is: ${factorial(number)}');
}
