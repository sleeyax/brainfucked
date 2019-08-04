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
          tokens.add(Token(TokenType.ADD, char));
          break;
        case '-':
          tokens.add(Token(TokenType.SUB, char));
          break;
        case '>':
          tokens.add(Token(TokenType.MVR, char));
          break;
        case '<':
          tokens.add(Token(TokenType.MVL, char));
          break;
        case '[':
          tokens.add(Token(TokenType.STARTLOOP, char));
          break;
        case ']':
          tokens.add(Token(TokenType.ENDLOOP, char));
          break;
        case '.':
          tokens.add(Token(TokenType.PRINT, char));
          break;
        case ',':
          tokens.add(Token(TokenType.INP, char));
          break;
      }
    }

    return tokens;
  }
}