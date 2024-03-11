
mixin ForEach on Tokenizer {
  void forEach(void Function(String) lambda) {
    while (moveNext()) {
      lambda(current);
    }
  }
}

abstract class Tokenizer implements Iterator<String> {
  final String _content;

  Tokenizer(this._content);
}

class NullTokenizer extends Tokenizer {
  NullTokenizer() : super("");

  @override
  String get current => throw StateError('No more elements');

  @override
  bool moveNext() => false;
}

class CharTokenizer extends Tokenizer with ForEach {
  int _cursor;
  CharTokenizer(super.content): _cursor = -1;

  @override
  String get current {
    if (_cursor >= _content.length || _cursor < 0) {
      throw StateError('No more elements');
    }
    return _content[_cursor];
  }

  @override
  bool moveNext() {
    _cursor++;
    return _cursor < _content.length;
  }

}

class WordTokenizer extends Tokenizer with ForEach {
  Iterator<RegExpMatch> _wordIterator;

  WordTokenizer(String content)
      : _wordIterator = RegExp(r'\w+').allMatches(content).iterator
      , super("") {
  }

  @override
  String get current => _wordIterator.current.group(0) ?? (throw StateError('No more elements'));

  @override
  bool moveNext() {
    return _wordIterator.moveNext();
  }

}

class LineIterator extends Tokenizer with ForEach {
  Iterator<RegExpMatch> _lineIterator;

  LineIterator(String content)
      : _lineIterator = RegExp(r'.*$', multiLine: true).allMatches(content).iterator
      , super("") {
  }

  @override
  String get current => _lineIterator.current.group(0) ?? (throw StateError('No more elements'));

  @override
  bool moveNext() {
    return _lineIterator.moveNext();
  }
}