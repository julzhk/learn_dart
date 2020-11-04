//Given an array return the total number of smiling faces.
//
// Valid smiley face examples: :) :D ;-D :~)
// Invalid smiley faces: ;( :> :} :]

int countSmileys(List<String> arr) {
  Set<String> faces = {
    ':)',
    ':D',
    ':-)',
    ':-D',
    ':~)',
    ':~D',
    ';)',
    ';D',
    ';-)',
    ';-D',
    ';~)',
    ';~D'
  };
  int count = arr
      .map((e) => faces.contains(e) ? 1 : 0)
      .fold(0, (value, element) => value + element);
  return count;
}

void main() {
  print(countSmileys([':)', ';(', ';}', ':-D']));
//  2
}
