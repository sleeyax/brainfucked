**READ ONLY**

This was a fun side project for me to learn more about Brainfuck, interpreters, tokenization etc. My solution likely still works but at this point it should be considered a finished 'as is' project because I don't intend to make any more changes to this code.

---

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
