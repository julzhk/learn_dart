// return the count of distinct case-insensitive alphabetic characters
// that occur more than once.

int duplicateCount(String text) {
  Map counts = {};
  text.toUpperCase().split('').forEach((element) {
    counts[element] = (counts[element] ?? 0) + 1;
  });
  counts.removeWhere((key, value) => value < 2);
  return counts.length;
}

int duplicateCount2(String text) => text
    .split('')
    .map((char) => char.toLowerCase())
    .where((element) => text
        .toLowerCase()
        .substring(text.indexOf(element) + 1)
        .contains(element))
    .toSet()
    .length;

void main() {
  print(duplicateCount("aaBbcde"));
}
