//* Question 15: Tower of Hanoi
//* Create a recursive function towerOfHanoi() that solves Tower of Hanoi puzzle. Function takes number of disks, source rod, destination rod, and auxiliary rod as parameters. Print each move. Test with 3 disks.

void towerOfHanoi(int n, String from, String to, String aux) {
  if (n == 1) {
    print("Move disk 1 from $from to $to");
    return;
  }

  towerOfHanoi(n - 1, from, aux, to);
  print("Move disk $n from $from to $to");
  towerOfHanoi(n - 1, aux, to, from);
}

void main() {
  towerOfHanoi(3, 'A', 'C', 'B');
}
