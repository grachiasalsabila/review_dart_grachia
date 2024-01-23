// Implementasikan fungsi Dart untuk memeriksa apakah dua string adalah anagram (mengandung huruf yang sama dengan urutan yang berbeda). //
void main() {
  String input1 = "grachia";
  String input2 = "salsabila";

  if (areAnagrams(input1, input2)) {
    print('$input1 dan $input2 adalah anagram.');
  } else {
    print('$input1 dan $input2 bukan anagram.');
  }
}

bool areAnagrams(String str1, String str2) {
  str1 = str1.replaceAll(' ', '').toLowerCase();
  str2 = str2.replaceAll(' ', '').toLowerCase();

  if (str1.length != str2.length) {
    return false;
  }

  Map<String, int> charCount = {};

  for (int i = 0; i < str1.length; i++) {
    charCount.update(str1[i], (count) => count + 1, ifAbsent: () => 1);
    charCount.update(str2[i], (count) => count - 1, ifAbsent: () => -1);
  }

  return charCount.values.every((count) => count == 0);
}
