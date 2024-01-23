// Buatlah sebuah function fibonacciSequence yang menerima input n, di mana Anda harus mencetak deret fibbonaci (bisa berupa array) sebanyak n elemen. //
void main() {
  int n = 10;
  List<int> fibonacciResult = fibonacciSequence(n);

  print('Fibonacci Sequence for n=$n: $fibonacciResult');
}

List<int> fibonacciSequence(int n) {
  List<int> sequence = [];

  if (n <= 0) {
    return sequence;
  } else if (n == 1) {
    sequence.add(0);
  } else {
    sequence.addAll([0, 1]);

    for (int i = 2; i < n; i++) {
      int nextElement = sequence[i - 1] + sequence[i - 2];
      sequence.add(nextElement);
    }
  }

  return sequence;
}
