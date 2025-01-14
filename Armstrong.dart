bool isArmstrong(int number) {
  int sum = 0, temp = number;
  int digits = number.toString().length;
  while (temp > 0) {
    int digit = temp % 10;
    sum += digit * digit * digit;
    temp ~/= 10;
  }
  return sum == number;
}

void main() {
  int number = 153;
  print('$number is an Armstrong number: ${isArmstrong(number)}');
}
