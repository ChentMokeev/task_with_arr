void main() {
  List l1 = [1, 2, 4];
  List l2 = [1, 3, 4];

  print(combineAndSort(l1, l2));
}

List combineAndSort(List arr1, List arr2) {
  List res = arr1 + arr2;

  res.sort();
  return res;
}
