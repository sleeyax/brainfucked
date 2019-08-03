import 'package:brainfucked/tokenizer/tokenizer.dart';

main(List<String> arguments) {
  BrainfuckTokenizer tokenizer = new BrainfuckTokenizer("++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.");
  print(tokenizer.tokenize());
}
