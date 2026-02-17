bool tidyNumber(int number) {
  String s = number.toString();

  for (int i = 0; i < s.length - 1; i++) {
    if (s[i].compareTo(s[i + 1]) > 0) {
      return false;
    }
  }

  return true;
}
