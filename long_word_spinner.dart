// a function that takes in a string of one or more words, and returns the same string,
// but with all five or more letter words reversed

// spinWords( "This is another test" )=> returns "This is rehtona test"

String spinWords(String str) {
  List words = str.split(" ");
  return words
      .map((word) =>
          ((word.length <= 4) ? word : word.split('').reversed.join()))
      .join(' ');
}

void main() => spinWords('slings and arrows');
