import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/word.dart';
import '../../../../theme/theme.dart';

class TranslateBlock extends StatefulWidget {
  TranslateBlock({
    required this.word,
  });

  final Word word;

  @override
  State<TranslateBlock> createState() => _TranslateBlockState();
}

class _TranslateBlockState extends State<TranslateBlock> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Text(
    //       isExample ? word.wordExample[0] : word.word,
    //       style: isMainTranslateBlock ? theme.textTheme.headline2?.copyWith(color: Colors.white) :theme.textTheme.bodyText1?.copyWith(),
    //     ),
    //     Divider(color: isMainTranslateBlock ? Colors.white : Colors.white),
    //     Text(
    //       isExample ? word.wordExample[1] : word.translate,
    //       style: isMainTranslateBlock ? theme.textTheme.bodyText2?.copyWith(color: Colors.white) :theme.textTheme.bodyText1?.copyWith(),
    //     ),
    //   ],
    // );

    return Container(
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Растаг', style: theme.textTheme.headline2?.copyWith(color: Colors.white)),
                    const Divider(color: Colors.white),
                    Text('РастАг', style: theme.textTheme.bodyText2?.copyWith(color: Colors.white)),
                  ],
                ),
                const SizedBox(width: 25),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.word.changeFavorite();
                    });
                  },
                  child: SvgPicture.asset(
                    'assets/Star.svg',
                    color: ThemeChanger.translateElementsColor,
                    width: 22,
                    height: 22,
                  ),
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
    );
  }
}
