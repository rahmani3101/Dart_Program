import 'dart:io';

void displayMultiplicationTable(int number) 
{
  for (int i = 1; i <= 10; i++) 
  {
    print('$number x $i = ${number * i}');
  }
}

void main()
{
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  displayMultiplicationTable(number);
}
