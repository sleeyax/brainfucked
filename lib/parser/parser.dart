import 'dart:convert';
import 'dart:io';

import 'package:brainfucked/parser/operations.dart';
import 'package:brainfucked/tokenizer/tokenizer.dart';
import 'package:brainfucked/tokenizer/tokens.dart';

class BrainfuckParser {

  List<String> _tokens;

  BrainfuckParser(BrainfuckTokenizer tokenizer) {
    _tokens = tokenizer.tokenize();
  }

  Map<String, dynamic> _toOperation(String op, dynamic value) {
    return {
      'op': op,
      'value': value
    };
  }

  List<Map<String, dynamic>> parse() {
    List<Map<String, dynamic>> operations = List<Map<String, dynamic>>();
    
    for (String token in _tokens) {
      switch(token) {
        case Tokens.ADD:
          operations.add(_toOperation(Operations.ADD, 1));
          break;
        case Tokens.SUB:
          operations.add(_toOperation(Operations.ADD, -1));
          break;
        case Tokens.MVR:
          operations.add(_toOperation(Operations.MOVE, 1));
          break;
         case Tokens.MVL:
          operations.add(_toOperation(Operations.MOVE, -1));
          break;
        case Tokens.PRINT:
          operations.add(_toOperation(Operations.OUT, 0));
          break;
        case Tokens.INP:
          String input = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
          // TODO: find out how to get ASCII code from string/char
          operations.add(_toOperation(Operations.IN, input.trim()));
          break;
      }
    }

    return operations;
  }
}