import 'package:brainfucked/parser/parser.dart';
import 'package:brainfucked/tokenizer/tokenizer.dart';

main(List<String> arguments) {
  // tokenize input
  BrainfuckTokenizer tokenizer = BrainfuckTokenizer("++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.");
  var tokens = tokenizer.tokenize();

  // parse tokens / create AST
  BrainfuckParser parser = BrainfuckParser();
  print(parser.parse(tokens.iterator));
}
