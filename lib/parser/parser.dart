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
        case TokenTYpe.ADD:
          operations.add(_toOperation(Operations.ADD, 1));
          break;
        case TokenTYpe.SUB:
          operations.add(_toOperation(Operations.ADD, -1));
          break;
        case TokenTYpe.MVR:
          operations.add(_toOperation(Operations.MOVE, 1));
          break;
         case TokenTYpe.MVL:
          operations.add(_toOperation(Operations.MOVE, -1));
          break;
        case TokenTYpe.PRINT:
          operations.add(_toOperation(Operations.OUT, 0));
          break;
        case TokenTYpe.STARTLOOP:
          operations.add(_toOperation(Operations.LOOP, parse(tokenIterator)));
          break;
        case TokenTYpe.ENDLOOP:
          return operations;
          break;
        case TokenTYpe.INP:
          String input = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
          // TODO: find out how to get ASCII code from string/char
          operations.add(_toOperation(Operations.IN, input[0].trim()));
          break;
      }
    }

    return operations;
  }
}