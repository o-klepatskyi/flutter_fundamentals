import 'src/logger.dart';
import 'src/text_stat.dart';
import 'dart:io';

Logger logger = Logger.namedLogger("main");

void main() {
  String aboutDart = readFile("dart.txt") ?? "";

  logger.log("Processing chars in small string");
  char_stat("abc eed");

  logger.log("Processing chars in text");
  char_stat(aboutDart);

  logger.log("Processing words in empty string");
  word_stat("");

  logger.log("Processing words in small string");
  word_stat("word1 word2 wordlong3");

  logger.log("Processing words in text");
  word_stat(aboutDart);
}

String? readFile(String path) {
  try {
    return File(path).readAsStringSync();
  } catch (e) {
    Logger.namedLogger("ERROR").log("Failed to open file '$path'");
    return null;
  }
}