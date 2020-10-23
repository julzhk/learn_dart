import 'dart:math';

// Given a lowercase string that has alphabetic characters only and no spaces,
// return the highest value of consonant substrings.
// assign the following values: a = 1, b = 2, c = 3, .... z = 26.
// For example, for the word "zodiacs", we get 26, for 'z' and 22 for 'cs'x

int sumsubstring(String s) {
  int offset = 'a'.codeUnitAt(0) - 1;
  return s
      .split('')
      .map((e) => (e.codeUnitAt(0) - offset))
      .reduce((a, b) => a + b);
}

int solve(String s) {
  var substrings = s.split(RegExp("[aeiou]+"));
  substrings.forEach((element) {
    print('${element} ${sumsubstring(element)}');
  });
  return substrings.map((e) => sumsubstring(e)).reduce(max);

  // (new String.fromCharCodes(new Iterable.generate(26, (x) => char_a )));
}

void main() => print(solve('zodiacs'));
