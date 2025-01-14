bool isPerfectNumber(int number) 
{
  int sum = 0;
  for (int i = 1; i <= number ~/ 2; i++) 
  {
    if (number % i == 0) sum += i;
  }
  return sum == number;
}

void main() 
{
  int number = 6;
  print('$number is a perfect number: ${isPerfectNumber(number)}');
}
