import 'package:brainfucked/interpreter.dart';

main(List<String> arguments) {
 BrainfuckInterpreter interpreter = BrainfuckInterpreter("++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.");
 interpreter.run();
}
