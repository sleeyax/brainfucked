import 'package:brainfucked/tokenizer/token.dart';
import 'package:brainfucked/tokenizer/tokens.dart';

class BrainfuckTokenizer {
  
  final String _code;
  
  BrainfuckTokenizer(this._code);

  List<Token> tokenize() {
    List<Token> tokens = List<Token>();
    
    for (var char in _code.split('')) {
      switch(char) {
        case '+':
          tokens.add(Token(Tokens.ADD, '+'));
          break;
        case '-':
          tokens.add(Token(Tokens.SUB, '-'));
          break;
        case '>':
          tokens.add(Token(Tokens.MVR, '>'));
          break;
        case '<':
          tokens.add(Token(Tokens.MVL, '<'));
          break;
        case '[':
          tokens.add(Token(Tokens.STARTLOOP, '['));
          break;
        case ']':
          tokens.add(Token(Tokens.ENDLOOP, ']'));
          break;
        case '.':
          tokens.add(Token(Tokens.PRINT, '.'));
          break;
        case ',':
          tokens.add(Token(Tokens.INP, ','));
          break;
      }
    }

    return tokens;
  }
}