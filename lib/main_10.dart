// Buatlah fungsi yang menerima sebuah list dan memeriksa apakah itu adalah deret aritmatika atau tidak. //
void main() {
  List<int> arithmeticSequence = [2, 4, 6, 8, 10];
  List<int> nonArithmeticSequence = [2, 4, 7, 8, 10];

  print('List: $arithmeticSequence');
  print(
      'Ini adalah deret aritmatika: ${isArithmeticSequence(arithmeticSequence)}');

  print('\nList: $nonArithmeticSequence');
  print(
      'Ini adalah deret aritmatika: ${isArithmeticSequence(nonArithmeticSequence)}');
}

bool isArithmeticSequence(List<int> numbers) {
  if (numbers.length < 2) {
    throw ArgumentError('List harus memiliki setidaknya dua elemen.');
  }

  int commonDifference = numbers[1] - numbers[0];

  for (int i = 2; i < numbers.length; i++) {
    if (numbers[i] - numbers[i - 1] != commonDifference) {
      return false;
    }
  }

  return true;
}
