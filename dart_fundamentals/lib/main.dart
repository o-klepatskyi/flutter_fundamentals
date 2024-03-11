import 'src/logger.dart';
import 'src/text_stat.dart';

Logger logger = Logger.namedLogger("main");
const String aboutDart = '''
    Dart is a modern, concise, and powerful programming language developed by Google, designed for building high-quality, mission-critical applications for the web, mobile, and desktop. It's the programming language behind Flutter, Google's UI toolkit for crafting beautiful, natively compiled applications from a single codebase.
    Dart is optimized for fast development cycles and runtime performance. It features a sound static type system, rich standard libraries, and a large ecosystem of packages that facilitate rapid development across platforms.
    Dart's syntax is clear and approachable, making it an excellent choice for both beginners and experienced developers looking to build interactive, high-performance applications.
  ''';

void main() {
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
