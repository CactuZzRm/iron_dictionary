import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        Container(
          // Синий контейнер с переводом слова, а также взаимодействия с ним
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TranslateBlock(
                        word: widget.word,
                        isMainTranslateBlock: true,
                        isExample: false,
                      ),
                    ),
                    const SizedBox(width: 25),
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.word.changeFavorite();
                        });
                      },
                      child: isFavorite
                          ? SvgPicture.asset('assets/InFavorite.svg',
                              color: ThemeChanger.translateElementsColor,
                              width: 22,
                              height: 22)
                          : SvgPicture.asset('assets/Favorite.svg',
                              color: ThemeChanger.translateElementsColor,
                              width: 22,
                              height: 22),
                    ),
                  ],
                ),
                const SizedBox(height: 37),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/Copy.svg'),
                      label: Text('Копировать',
                          style: theme.textTheme.bodyText2
                              ?.copyWith(color: Colors.white)),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/Volume.svg'),
                      label: Text('Прослушать',
                          style: theme.textTheme.bodyText2
                              ?.copyWith(color: Colors.white)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
            // Контейнер с примером использования слова
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Примеры', style: theme.textTheme.headline3),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: TranslateBlock(
                    word: wordsModel.words[6],
                    isMainTranslateBlock: false,
                    isExample: true,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: TranslateBlock(
                    word: Word(
                      word: 'Предложение на русском',
                      translate: 'Предложение на осетинском',
                    ),
                    isMainTranslateBlock: false,
                    isExample: true,
                  ),
                ),
              ],
            )),
        const SizedBox(height: 20),
        Container(
          // Контейнер с другими переводами слова
          decoration: BoxDecoration(
            color: theme.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Другие варианты перевода',
                  style: theme.textTheme.headline3),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    for (int i = 0; i < 1; i++)
                      // Вообще тут единицу надо заменить на длину листа других переводов, но пока так(узнать как должно быть со стороы данных)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                wordsModel.words[6].anyTranslate[0].translate,
                                style: theme.textTheme.headline2,
                              ),
                              InkWell(
                                onTap: () => setState(() {
                                  widget.word.isFavorite =
                                      !widget.word.isFavorite;
                                }),
                                child: isFavorite
                                    ? SvgPicture.asset('assets/InFavorite.svg',
                                        color: ThemeChanger.yellowColor,
                                        width: 22,
                                        height: 22)
                                    : SvgPicture.asset('assets/Favorite.svg',
                                        color: ThemeChanger.yellowColor,
                                        width: 22,
                                        height: 22),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(wordsModel.words[6].anyTranslate[0].wordExample[0],
                              style: theme.textTheme.bodyText1),
                          Divider(color: ThemeChanger.translateElementsColor),
                          Text(wordsModel.words[6].anyTranslate[0].wordExample[1],
                              style: theme.textTheme.bodyText1),
                        ],
                      )
                  ],
                ),
              ),
              // const SizedBox(height: 10),
              // Container(
              //   margin: const EdgeInsets.only(left: 10),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text('Предложение на осетинском',
              //           style: theme.textTheme.bodyText1),
              //       Divider(color: ThemeChanger.translateElementsColor),
              //       Text('Предложение на русском',
              //           style: theme.textTheme.bodyText1),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
