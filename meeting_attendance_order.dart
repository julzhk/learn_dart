// Sort names list by surname.
// When the last names are the same, sort them by first name.
// Output the name in a parentheses separated by a comma.

class Name implements Comparable {
  String fullName, firstName, secondName;

  Name(String fullName) {
    List<String> names = fullName.split(':');
    this.firstName = names[0];
    this.secondName = names[1];
  }

  toString() => '($secondName, $firstName)'.toUpperCase();

  String toSort() {
    return '$secondName $firstName'.toUpperCase();
  }

  @override
  int compareTo(other) {
    if (other.toSort() > this.toSort()) {
      return 1;
    }
    if (other.toSort() < this.toSort()) {
      return -1;
    }
    return 0;
  }
}

meeting(String s) {
  List<Name> names = s.split(';').map((e) => Name(e)).toList();
  names.sort((a, b) => Comparable.compare(a.toSort(), b.toSort()));
  return names.join();
}

void main() {
  print(meeting("Anna:Wahl;Grace:Gates;James:Russell;Elizabeth:Rudd"));
}
