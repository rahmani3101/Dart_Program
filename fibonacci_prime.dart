bool isPrime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void fibonacciPrimes(int limit) {
  int a = 0, b = 1;
  while (a <= limit) {
    if (isPrime(a)) {
      print('$a is a Fibonacci Prime');
    }
    int temp = a;
    a = b;
    b = temp + b;
  }
}

void main() {
  int limit = 100; // Set the limit
  fibonacciPrimes(limit);
}
