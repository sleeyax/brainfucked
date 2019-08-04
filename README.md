# Brainfucked
Totally overkill Brainfuck interpreter, parser & tokenizer written in Dart.

## Usage
### CLI
```
$ dart bin/main.dart samples/helloworld.bf
Hello World!
```
### Code
```
BrainfuckTokenizer tokenizer = BrainfuckTokenizer("+++.");
var tokens = tokenizer.tokenize();
var parsed = BrainfuckParser().parse(tokens.iterator);
// BrainfuckInterpreter().run(parsed);
// OR:
String result = BrainfuckInterpreter().getResult(parsed);
print(result);
```