// mexican wave in a string:
// 'hello' returns a list: ['Hello','hEllo', 'heLlo' ... ]

List<String> wave(String str) {
  List<String> result = [];
  List s = str.split('');
  for (var i = 0; i < s.length; i++) {
    result.add(str.substring(0, i) +
        str[i].toUpperCase() +
        str.substring(i + 1, s.length));
  }
  return result;
}

void main() {
  print(wave('hello'));
}
