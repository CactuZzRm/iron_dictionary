import 'package:flutter/material.dart';
import 'package:iron_dictionary/pages/translate_page/components/translate_information/translate_information.dart';
import 'package:provider/provider.dart';

import '../../models/word.dart';
import '../../providers/words.dart';
import 'components/selectable_language_container/selectable_language_container.dart';
import 'components/text_input_field.dart';
import 'components/word_list/word_list.dart';

class TranslatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Word> words = Provider.of<Words>(context).words;
    
    return ListView(
      //physics: const NeverScrollableScrollPhysics(),
      children: [
        SelectableLanguageContainer(),
        const SizedBox(height: 30),
        MainTextField(),
        const SizedBox(height: 20),
        TranslateInfo(word: words[6]),
        //WordList(words: words)
      ],
    );
  }
}