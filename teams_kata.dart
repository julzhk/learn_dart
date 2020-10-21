// Several people are standing in a row divided into two teams.
// The first person goes into team 1, the second goes into team 2,
// the third goes into team 1, and so on.

// Task
// Given an array of positive integers (the weights of the people),
// return a new array/tuple of two integers, where the first one is the total
// weight of team 1, and the second one is the total weight of team 2.

// Notes
// Array size is at least 1.
// All numbers will be positive.

rowWeights(arr) {
  List teams = [0, 0];
  (arr.asMap().entries.map((MapEntry entry) {
    int idx = entry.key;
    int val = entry.value;
    if (idx.isOdd) {
      teams[0] += val;
    } else {
      teams[1] += val;
    }
  })).toList();
  return teams;
}

void main() => rowWeights([1, 2, 3, 4, 5]);
