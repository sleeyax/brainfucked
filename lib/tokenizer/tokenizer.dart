import 'package:brainfucked/tokenizer/token.dart';
import 'package:brainfucked/tokenizer/token_type.dart';

class BrainfuckTokenizer {
  
  final String _code;
  
  BrainfuckTokenizer(this._code);

  List<Token> tokenize() {
    List<Token> tokens = List<Token>();
    
    for (var char in _code.split('')) {
      switch(char) {
        case '+':
          tokens.add(Token(TokenType.ADD, '+'));
          break;
        case '-':
          tokens.add(Token(TokenType.SUB, '-'));
          break;
        case '>':
          tokens.add(Token(TokenType.MVR, '>'));
          break;
        case '<':
          tokens.add(Token(TokenType.MVL, '<'));
          break;
        case '[':
          tokens.add(Token(TokenType.STARTLOOP, '['));
          break;
        case ']':
          tokens.add(Token(TokenType.ENDLOOP, ']'));
          break;
        case '.':
          tokens.add(Token(TokenType.PRINT, '.'));
          break;
        case ',':
          tokens.add(Token(TokenType.INP, ','));
          break;
      }
    }

    return tokens;
  }
}