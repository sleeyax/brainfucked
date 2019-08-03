import 'package:brainfucked/tokenizer/tokens.dart';

class BrainfuckTokenizer {
  
  final String _code;
  
  BrainfuckTokenizer(this._code);

  List<String> tokenize() {
    List<String> tokens = List<String>();
    
    for (var char in _code.split('')) {
      switch(char) {
        case '+':
          tokens.add(Tokens.ADD);
          break;
        case '-':
          tokens.add(Tokens.SUB);
          break;
        case '>':
          tokens.add(Tokens.MVR);
          break;
        case '<':
          tokens.add(Tokens.MVL);
          break;
        case '[':
          tokens.add(Tokens.STARTLOOP);
          break;
        case ']':
          tokens.add(Tokens.ENDLOOP);
          break;
        case '.':
          tokens.add(Tokens.PRINT);
          break;
        case ',':
          tokens.add(Tokens.INP);
          break;
      }
    }

    return tokens;
  }
}