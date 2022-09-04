import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iron_dictionary/pages/translate_page/components/translate_information/example_block.dart';
import 'package:iron_dictionary/pages/translate_page/components/translate_information/other_translates_block.dart';
import 'package:provider/provider.dart';

import '../../../../models/word.dart';
import '../../../../providers/words.dart';
import '../../../../theme/theme.dart';
import 'translate_block.dart';

class TranslateInfo extends StatefulWidget {
  Word word;

  TranslateInfo({required this.word});

  @override
  State<TranslateInfo> createState() => _TranslateInfoState();
}

class _TranslateInfoState extends State<TranslateInfo> {
  @override
  Widget build(BuildContext context) {
    final wordsModel = Provider.of<Words>(context);
    final theme = Theme.of(context);
    final bool isFavorite = widget.word.isFavorite;
    wordsModel.words[6].tempFunc(); // Добавляет другой перевод. Потом надо будет убрать

    return Column(
      children: [
        TranslateBlock(word: widget.word),
        const SizedBox(height: 20),
        ExampleBlock(word: widget.word),
        const SizedBox(height: 20),
        OtherTranslateBlock(),
      ],
    );
  }
}
