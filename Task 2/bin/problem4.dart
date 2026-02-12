int squareSum(List<int> numbers) {
  int sum = 0;
  numbers.map((e) => e * e).forEach((element) {
    sum += element;
  });

  return sum;
}
