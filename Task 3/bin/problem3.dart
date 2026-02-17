int potatoes(int p0, int w0, int p1) {
  double dryMatter = w0 * (100 - p0) / 100;
  double w1 = dryMatter * 100 / (100 - p1);
  return w1.toInt();
}

void main() {
  print(potatoes(99, 100, 98));
}
