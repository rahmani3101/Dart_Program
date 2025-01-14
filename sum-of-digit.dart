int sumOfDigits(int number) {
  if (number == 0) return 0;
  return number % 10 + sumOfDigits(number ~/ 10);
}

void main() {
  int number = 1234;
  print('Sum of digits of $number: ${sumOfDigits(number)}');
}
