// Buatlah sebuah function untuk membalik sebuah string
// Contoh:
//        Input: “hello world”
//        Output: “dlrow olleh
void main() {
  String inputString = "hello world";
  String reversedString = reverseString(inputString);

  print('Input: $inputString');
  print('Output: $reversedString');
}

String reverseString(String input) {
  List<String> characters = input.split('');
  List<String> reversedCharacters = characters.reversed.toList();
  return reversedCharacters.join();
}
