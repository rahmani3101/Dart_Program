bool isPalindrome(int number) {
  int reversed = 0, original = number;
  while (number > 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }
  return original == reversed;
}

void main() {
  int number = 121;
  print('$number is a palindrome: ${isPalindrome(number)}');
}
