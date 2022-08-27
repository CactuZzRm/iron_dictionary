import 'package:flutter/material.dart';

import '../models/word.dart';

class Words extends ChangeNotifier {
  List<Word> words = [
    Word(word: 'Слово 1', translate: 'Перевод 1'),
    Word(word: 'Слово 2', translate: 'Перевод 2'),
    Word(word: 'Слово 3', translate: 'Перевод 3'),
    Word(word: 'Слово 4', translate: 'Перевод 4'),
    Word(word: 'Слово 5', translate: 'Перевод 5'),
    Word(word: 'Слово 6', translate: 'Перевод 6'),
    Word(word: 'Привет', translate: 'Privet'),
  ];
}