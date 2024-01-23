// Anda akan membuat sebuah function passwordGenerator di mana function tersebut menerima sebuah string dan mengembalikan string yang sudah terenkripsi.
//Formula enkripsinya adalah sebagai berikut :
//      1. Alfabet harus dimajukan 2 huruf, misalnya huruf A akan dienkripsi menjadi huruf C
//      2. Huruf kapital harus dijadikan hurur kecil dan sebaliknya
//      3. Karakter non alfabet (termasuk spasi) harus dijadikan underscore

//      Contoh
//           Input: I loVe coding!
//           Output: k_NxG_EQFKPI_
void main() {
  String input = "I loVe coding!";
  String output = passwordGenerator(input);

  print('Input: $input');
  print('Output: $output');
}

String passwordGenerator(String input) {
  StringBuffer result = StringBuffer();

  for (int i = 0; i < input.length; i++) {
    String currentChar = input[i];

    if (currentChar.toLowerCase() != currentChar.toUpperCase()) {
      String encryptedChar = String.fromCharCode(currentChar.codeUnitAt(0) + 2);
      if (currentChar == currentChar.toUpperCase()) {
        encryptedChar = encryptedChar.toLowerCase();
      } else {
        encryptedChar = encryptedChar.toUpperCase();
      }
      result.write(encryptedChar);
    } else {
      result.write('_');
    }
  }

  return result.toString();
}
