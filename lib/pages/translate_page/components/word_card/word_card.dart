import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron_dictionary/theme/theme.dart';

import '../../../../models/word.dart';

class WordCard extends StatefulWidget {
  Word word;
  int index;

  WordCard({required this.word, required this.index});

  @override
  State<WordCard> createState() => _WordCardState();
}

class _WordCardState extends State<WordCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    bool isFavorite = widget.word.isFavorite;
    return Container(
      margin: !(widget.index == 0) ? const EdgeInsets.only(top: 20) : null,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 100,
              offset: Offset(0.0, 1),
              blurStyle: BlurStyle.inner,
              ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.word.word,
                  style: theme.textTheme.bodyText1?.copyWith(color: theme.primaryColor),
                ),
                const Divider(),
                Text(
                  widget.word.translate,
                  style: theme.textTheme.bodyText1,
                ),
              ],
            ),
          ),
          const SizedBox(width: 25),
          InkWell(
            onTap: () => setState(() {
              widget.word.isFavorite = !widget.word.isFavorite;
            }),
            child: isFavorite
                ? SvgPicture.asset('assets/InFavorite.svg',
                    color: ThemeChanger.yellowColor, width: 22, height: 22)
                : SvgPicture.asset('assets/Favorite.svg',
                    color: ThemeChanger.yellowColor, width: 22, height: 22),
          ),
        ],
      ),
    );
  }
}
