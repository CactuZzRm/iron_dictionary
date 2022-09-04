class Word {
  String word;
  String translate;
  bool isFavorite = false;
  
  List<String> wordExample = ['Предложение на осетниском', 'Предложение на русском'];
  List<Word> anyTranslate = [];

  Word({
    required this.word,
    required this.translate,
  });

  void changeFavorite() {
    isFavorite = !isFavorite;
    //print('Меняю favorite: ${isFavorite}');
  }

  void tempFunc() {
    anyTranslate.add(Word(word: 'Афон', translate: 'Время'));
  }
}
