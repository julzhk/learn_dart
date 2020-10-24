// Take a string of braces and determines if braces are balanced.
// Examples
// "(){}[]"   =>  True
// "([{}])"   =>  True
// "(}"       =>  False

bool validBraces(String braces) {
  List bracketstack = [];
  var brackets_lookup = {
    '{': '}',
    '(': ')',
    '[': ']',
  };

  braces.split('').forEach((brace) {
    brackets_lookup.keys.forEach((element) {
      if (element == brace) {
        bracketstack.add(brace);
      }
      if (brace == brackets_lookup[element]) {
        if (bracketstack.isNotEmpty && bracketstack.last == element) {
          bracketstack.removeLast();
        } else {
          bracketstack.add(brace);
        }
      }
    });
  });
  return bracketstack.length == 0;
}

void main() {
  // print(validBraces('(){}'));
  print(validBraces('(()'));
}
