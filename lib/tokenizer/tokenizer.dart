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
          tokens.add(Token(TokenTYpe.ADD, '+'));
          break;
        case '-':
          tokens.add(Token(TokenTYpe.SUB, '-'));
          break;
        case '>':
          tokens.add(Token(TokenTYpe.MVR, '>'));
          break;
        case '<':
          tokens.add(Token(TokenTYpe.MVL, '<'));
          break;
        case '[':
          tokens.add(Token(TokenTYpe.STARTLOOP, '['));
          break;
        case ']':
          tokens.add(Token(TokenTYpe.ENDLOOP, ']'));
          break;
        case '.':
          tokens.add(Token(TokenTYpe.PRINT, '.'));
          break;
        case ',':
          tokens.add(Token(TokenTYpe.INP, ','));
          break;
      }
    }

    return tokens;
  }
}