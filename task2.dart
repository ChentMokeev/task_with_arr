import 'dart:io';

void main() {
  var s = stdin.readLineSync()!;
  List chars = s.split('');

  print(checkBracketClosed(chars));
}

bool checkBracketClosed(List anyList) {
  var openIndex, closeIndex;
  List stack = [];
  List open = ['{', '(', '['];
  List close = ['}', ')', ']'];

  for (int i = 0; i < anyList.length; i++) {
    openIndex = open.indexOf(anyList[i]);
    if (openIndex != -1) {
      stack.add(openIndex);
      continue;
    }

    closeIndex = close.indexOf(anyList[i]);
    if (closeIndex != -1) {
      openIndex = stack.removeLast();
      if (closeIndex != openIndex) {
        return false;
      }
    }
  }

  if (stack.length != 0) {
    return false;
  }

  return true;
}
