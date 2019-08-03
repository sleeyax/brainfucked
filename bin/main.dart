import 'package:brainfucked/parser/parser.dart';
import 'package:brainfucked/tokenizer/tokenizer.dart';

main(List<String> arguments) {
  BrainfuckTokenizer tokenizer = new BrainfuckTokenizer("++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.");
  BrainfuckParser parser = new BrainfuckParser(tokenizer);
  print(parser.parse());
}
