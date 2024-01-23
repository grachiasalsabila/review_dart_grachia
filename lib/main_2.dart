// Buatlah sebuah function yang menerima sebuah array. Buatlah sebuah function yang mengembalikan sebuah angka di mana angka tersebut adalah hasil penjumlahan yang paling besar dari 3 elemen yang berurutan.
// Contoh:
//   Input: [10, 90, 72, 61, 123]
//   Output: 256

// Penjelasan:
//  256 adalah hasil penjumlahan dari 72, 61, dan 123 yang mana 3 elemen berurutan
//  Jika kita coba jumlahkan 3 elemen berurutan yang lain seperti 10, 90, 72 atau 90, 72, 61, tidak akan menghasilkan angka sebesar 256
void main() {
  print(checkSum([10, 90, 72, 61, 123]));
}

int checkSum(List<int> arr) {
  int sum = 0;
  for (int i = 0; i < arr.length - 2; i++) {
    int temp = arr[i] + arr[i + 1] + arr[i + 2];
    sum = temp > sum ? temp : sum;
  }

  return sum;
}
