import 'package:brainfucked/interpreter.dart';
import 'package:brainfucked/parser/parser.dart';
import 'package:brainfucked/tokenizer/tokenizer.dart';

main(List<String> arguments) {
  BrainfuckTokenizer tokenizer = BrainfuckTokenizer("++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.");
  var tokens = tokenizer.tokenize();
  var parsed = BrainfuckParser().parse(tokens.iterator);
  BrainfuckInterpreter().run(parsed);
}
