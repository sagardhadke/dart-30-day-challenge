//* Question 14: Prime Number Skip with Continue
//* Use a for loop from 1 to 50. Use continue to skip prime numbers. Print only non-prime numbers (composite numbers).

void main() {
  for (int i = 1; i <= 50; i++) {
    if (isPrime(i)) continue;
    print(i);
  }
}

bool isPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
