import 'package:flutter/material.dart';

import '../../../../models/word.dart';
import '../../../../theme/theme.dart';

class TranslateBlock extends StatelessWidget {
  TranslateBlock({
    required this.word,
    required this.isMainTranslateBlock,
    required this.isExample,
  });

  final Word word;
  final isMainTranslateBlock; // Используется для изменения стиля текста, возможно надо будет переделать
  final isExample;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isExample ? word.wordExample[0] : word.word,
          style: isMainTranslateBlock ? theme.textTheme.headline2?.copyWith(color: Colors.white) :theme.textTheme.bodyText1?.copyWith(),
        ),
        Divider(color: isMainTranslateBlock ? Colors.white : Colors.white),
        Text(
          isExample ? word.wordExample[1] : word.translate,
          style: isMainTranslateBlock ? theme.textTheme.bodyText2?.copyWith(color: Colors.white) :theme.textTheme.bodyText1?.copyWith(),
        ),
      ],
    );
  }
}
