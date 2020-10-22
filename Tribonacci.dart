// Basically a Fibonacci, but summing the last 3 (instead of 2) numbers of the sequence
// So, if we are start our Tribonacci sequence with [1, 1, 1] we have this sequence:
// [1, 1 ,1, 3, 5, 9, 17, 31, ...]
// if we start with [0, 0, 1] we get:
// [0, 0, 1, 1, 2, 4, 7, 13, 24, ...]
// Also supply 'n' for the length of sequence to return

List<num> tribonacci(List<num> signature, int n) {
  List result = signature;
  for (var x = 4; x <= n; x++) {
    num next_item = result.sublist(x - 4, x - 1).fold(0, (p, c) => p + c);
    result.add(next_item);
  }
  return result.sublist(0, n);
}

void main() => print(tribonacci([1, 1, 1], 10));
