//* 19. Convert List<String> words = ['a','bb','ccc'] to List<int> lengths using .map().

void main() {
  List<String> words = ['a', 'bb', 'ccc'];

  List<int> wordsCount = [];
  wordsCount = words.map((e) => e.length).toList();
  print(wordsCount);
}
