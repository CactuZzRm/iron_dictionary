import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/word.dart';
import '../../providers/words.dart';
import '../translate_page/components/word_card/word_card.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Word> favoritesWords = Provider.of<Words>(context)
        .words
        .where((word) => word.isFavorite)
        .toList();

    return ListView.builder(
      itemBuilder: (context, index) {
        return WordCard(
          word: favoritesWords[index],
          index: index,
        );
      },
      itemCount: favoritesWords.length,
    );
  }
}
