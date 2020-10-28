// eg: items are formed into a circle. Proceed to remove one item every three until none are left.

// [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2)
// Expected: [2, 4, 6, 8, 10, 3, 7, 1, 9, 5]

List josephus(final List items, final int k) {
  List<dynamic> r = [];
  int pointer = k - 1;
  while (items.isNotEmpty) {
    pointer = pointer.remainder(items.length);
    r.add(items[pointer]);
    items.removeAt(pointer);
    pointer += k - 1;
  }
  return r;
}

List other_josephus(final List items, final int k) {
  final result = [];
  int i = 0;
  while (items.length != 0)
    result.add(items.removeAt(i = (i + k - 1) % items.length));
  return result;
}

int josephusSurvivor(int n, int k) {
  //what's the last item?
  var list = new List<int>.generate(n, (i) => i + 1);
  return josephus(list, k).last;
}

void main() {
  // print(josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2));
  print(josephusSurvivor(10, 2));
}
