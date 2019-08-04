import 'package:brainfucked/parser/operations.dart';

class BrainfuckInterpreter {
  int _index = 0;
  List<int> _blocks = [0];

  String _execute(var parsed) {
    String result = "";
    
    for (var operation in parsed) {
      final dynamic value = operation['value'];

      switch (operation['op']) {
        case Operations.ADD:
          _blocks[_index] += value;
          break;
        case Operations.MOVE:
          _index += value;
          while (_index >= _blocks.length) _blocks.add(0);
          break;
        case Operations.LOOP:
          while (_blocks[_index] > 0) result += _execute(value);
          break;
        case Operations.OUT:
          result += String.fromCharCode(_blocks[_index]);
          break;
      }
    }

    return result;
  }

  String getResult(List<Map<String, dynamic>> parsed) => _execute(parsed);

  void run(List<Map<String, dynamic>> parsed) => print(_execute(parsed));
}