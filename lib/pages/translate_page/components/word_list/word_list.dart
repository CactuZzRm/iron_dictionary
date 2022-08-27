import 'package:flutter/material.dart';

import '../../../../models/word.dart';
import '../word_card/word_card.dart';

class WordList extends StatelessWidget {
  const WordList({
    Key? key,
    required this.words,
  }) : super(key: key);

  final List<Word> words;

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: 320,
    //   child: ListView.builder(
    //     itemCount: words.length,
    //     itemBuilder: ((context, index) => WordCard(
    //           word: words[index], index: index,
    //         )),
    //   ),
    // );
    return Expanded(
      child: ListView(
        children: [
          for (int i = 0; i < words.length; i++)
            WordCard(word: words[i], index: i),
        ],
      ),
    );
  }
}
