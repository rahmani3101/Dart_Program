import 'dart:io';

int sumOfEvens(int start, int end) 
{
  int sum = 0;
  for (int i = start; i <= end; i++) 
  {
    if (i % 2 == 0) 
    {
      sum += i;
    }
  }
  return sum;
}

void main()
{
  stdout.write("Enter the start number: ");
  int start = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the end number: ");
  int end = int.parse(stdin.readLineSync()!);

  print('Sum of even numbers between $start and $end is: ${sumOfEvens(start, end)}');
}
