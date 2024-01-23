// Buatlah sebuah function yang menerima sebuah array angka dan function tersebut akan mereturn sebuah array yang di dalamnya hanya terdapat angka prima. //
void main() {
  List<int> masukkanAngka = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> bilanganPrima = filterPrima(masukkanAngka);

  print('Masukkan Angka: $masukkanAngka');
  print('Bilangan Prima: $bilanganPrima');
}

bool isPrima(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

List<int> filterPrima(List<int> numbers) {
  return numbers.where((number) => isPrima(number)).toList();
}
