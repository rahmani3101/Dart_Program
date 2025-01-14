import 'dart:io';

int findLargest(List<int> numbers) 
{
  
  int largest = numbers[0];
  for (var num in numbers) 
  {
    if (num > largest) 
    {
      largest = num;
    }
  }
  return largest;
}

void main() 
{
  stdout.write("Enter the number of elements: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  for (int i = 0; i < n; i++) 
  {
    stdout.write("Enter number ${i + 1}: ");
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  print('The largest number is: ${findLargest(numbers)}');
}
