import 'dart:io';

int power(int base, int exponent) 
{
  int result = 1;
  for (int i = 0; i < exponent; i++)
  {
    result *= base;
  }
  return result;
}

void main() 
{
  stdout.write("Enter the base: ");
  int base = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the exponent: ");
  int exponent = int.parse(stdin.readLineSync()!);

  print('$base raised to the power of $exponent is: ${power(base, exponent)}');
}
