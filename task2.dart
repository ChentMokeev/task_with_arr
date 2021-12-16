import 'dart:io';

void main() {
  var s = stdin.readLineSync()!;
  List chars = s.split('');
  var openIndex, closeIndex;
  List stack = [];
  List open = ['{', '(', '['];
  List close = ['}', ')', ']'];

  for (int i = 0; i < chars.length; i++) {
    openIndex = open.indexOf(chars[i]);
    if (openIndex != -1) {
      stack.add(openIndex);
      continue;
    }

    closeIndex = close.indexOf(chars[i]);
    if (closeIndex != -1) {
      openIndex = stack.removeLast();
      if (closeIndex != openIndex) {
        print(false);
        return;
      }
    }
  }

  if (stack.length != 0) {
    print(false);
    return;
  }

  print(true);
}
