// turn rgb into a hex value. Clamp any out of range to closest
// (ie 300 should be 255 or FF, similarly for negative numbers

String rgb(int r, int g, int b) {
  return [r, g, b]
      .map((e) => e > 255 ? 255 : e)
      .map((e) => e < 0 ? 0 : e)
      .map((e) => e.toRadixString(16).padLeft(2, '0'))
      .join('')
      .toUpperCase();
}

void main() {
  print(rgb(-255, 255, 300));
}
