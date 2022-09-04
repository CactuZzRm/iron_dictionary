import 'package:flutter/material.dart';

import '../../../../models/word.dart';
import 'translate_block.dart';

class ExampleBlock extends StatelessWidget {
  const ExampleBlock({super.key, required this.word});

  final word;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      // Контейнер с примером использования слова
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.only(right: 25, left: 25, top: 20, bottom: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Примеры', style: theme.textTheme.headline3),
          const SizedBox(height: 20),
          Text(word.wordExample[0], style: theme.textTheme.bodyText1),
          Divider(color: theme.dividerColor),
          Text(word.wordExample[1], style: theme.textTheme.bodyText1),
          const SizedBox(height: 10),
          Text(word.wordExample[0], style: theme.textTheme.bodyText1),
          Divider(color: theme.dividerColor),
          Text(word.wordExample[1], style: theme.textTheme.bodyText1),
        ],
      ),
    );
  }
}
