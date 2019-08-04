import 'dart:convert';
import 'dart:io';
import 'package:brainfucked/parser/operations.dart';
import 'package:brainfucked/tokenizer/token.dart';
import 'package:brainfucked/tokenizer/token_type.dart';

class BrainfuckParser {

  Map<String, dynamic> _toOperation(String op, dynamic value) {
    return {
      'op': op,
      'value': value
    };
  }

  List<Map<String, dynamic>> parse(Iterator<Token> tokenIterator) {
    List<Map<String, dynamic>> operations = List<Map<String, dynamic>>();
    
    while (tokenIterator.moveNext()) {
      Token token = tokenIterator.current;
      
      switch(token.type) {
        case TokenType.ADD:
          operations.add(_toOperation(Operations.ADD, 1));
          break;
        case TokenType.SUB:
          operations.add(_toOperation(Operations.ADD, -1));
          break;
        case TokenType.MVR:
          operations.add(_toOperation(Operations.MOVE, 1));
          break;
         case TokenType.MVL:
          operations.add(_toOperation(Operations.MOVE, -1));
          break;
        case TokenType.PRINT:
          operations.add(_toOperation(Operations.OUT, 0));
          break;
        case TokenType.STARTLOOP:
          operations.add(_toOperation(Operations.LOOP, parse(tokenIterator)));
          break;
        case TokenType.ENDLOOP:
          return operations;
          break;
        case TokenType.INP:
          String input = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
          operations.add(_toOperation(Operations.IN, input.trim().codeUnitAt(0)));
          break;
      }
    }
    return operations;
  }
}