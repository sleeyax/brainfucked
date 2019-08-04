import 'dart:io';

import 'package:brainfucked/interpreter.dart';
import 'package:brainfucked/parser/parser.dart';
import 'package:brainfucked/tokenizer/tokenizer.dart';

main(List<String> arguments) {
  if (arguments.length != 1) {
    print("Usage: dart main.dart file.bf");
    return;
  }

  String code;
  try {
    code = new File(arguments[0]).readAsStringSync();
  } catch (FileSystemException) {
    throw new Exception("Failed to read contents of file '${arguments[0]}'!");
  }

  BrainfuckTokenizer tokenizer = BrainfuckTokenizer(code);
  var tokens = tokenizer.tokenize();
  var parsed = BrainfuckParser().parse(tokens.iterator);
  BrainfuckInterpreter().run(parsed);
}
