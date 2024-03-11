import 'tokenizer.dart';
import 'logger.dart';

Logger _logger = Logger.namedLogger("stat");

const Set<String> _vowels = {'a', 'e', 'i', 'o', 'u', 'y'};

bool isVowel(String char) {
  assert(char.length == 1);
  return _vowels.contains(char);
}

bool isWhitespace(String char) {
  assert(char.length == 1);
  return char.trim().isEmpty;
}

void char_stat(String text) {
  CharTokenizer tokenizer = CharTokenizer(text);
  Set<String> uniqueChars = {};
  int whitespaceCount = 0;
  int vowelsCount = 0;
  int totalCount = 0;
  tokenizer.forEach((c) {
    assert(c.length == 1);
    if (isWhitespace(c)) {
      whitespaceCount++;
    }
    else {
      uniqueChars.add(c);
    }
    if (isVowel(c)) {
      vowelsCount++;
    }
    totalCount++;
  });

  _logger.log("Total characters: $totalCount, including: whitespaces: $whitespaceCount, vowels: $vowelsCount");
  _logger.log("Unique non-whitespace chars: ${uniqueChars.length} => ${uniqueChars}");
}

void word_stat(String text) {
  WordTokenizer tokenizer = WordTokenizer(text);
  int wordCount = 0;
  String? longestWord;
  Map<String, int> wordFrequency = {};
  tokenizer.forEach((word) {
    assert(word.length > 0);
    wordCount++;
    longestWord ??= word;
    if (longestWord!.length < word.length) {
      longestWord = word;
    }
    wordFrequency.update(word, (value) => value + 1, ifAbsent: () => 1);
  });

  if (longestWord == null) {
    _logger.log("Total words: $wordCount, no longest word :(");
  }
  else {
    wordFrequency = Map.fromEntries(wordFrequency.entries.toList()
      ..sort((e1, e2) => e2.value.compareTo(e1.value))
    );
    _logger.log("Total words: $wordCount, longest word is '$longestWord' with length ${longestWord!.length}");
    _logger.log("Word frequency: ${wordFrequency}");
  }
}