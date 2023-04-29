String concatenateWords(String word) {
  List<String> splittedWords = word.split('-');

  String camelCaseWord = '';

  for (var i = 0; i < splittedWords.length; i++) {
    if (i == 0) {
      camelCaseWord += splittedWords[i];
      continue;
    }

    String uppercase = splittedWords[i]
        .replaceFirst(splittedWords[i][0], splittedWords[i][0].toUpperCase());

    camelCaseWord += uppercase;
  }
  return camelCaseWord;
}
