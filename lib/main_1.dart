// Buatlah sebuah function yang menerima sebuah string. Lalu di dalam function tersebut Anda harus mengecek apakah string tersebut palindrom/tidak.
// Jika palindrom, return true, jika tidak, return false.

// Contoh:
//    Input: Anna
//    Output: true

//    Input: Hacktiv8
//    Output: false
void main() {
  print(checkPalindromeFor("Anna"));
  print(checkPalindromeFor("Hacktive8"));
}

bool checkPalindromeFor(String text) {
  for (int i = 0; i < text.length; i++) {
    if (text[i].toLowerCase() != text[text.length - 1 - i].toLowerCase())
      return false;
  }

  return true;
}
