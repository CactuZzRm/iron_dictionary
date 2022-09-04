import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../theme/theme.dart';

class OtherTranslateBlock extends StatelessWidget {
  const OtherTranslateBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.only(right: 25, left: 25, top: 20, bottom: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Другие варианты перевода', style: theme.textTheme.headline3),
          const SizedBox(height: 20),
          Row(
            //---------------------------------------------------------------
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Афон', style: theme.textTheme.headline2),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/Star.svg',
                  color: ThemeChanger.yellowColor,
                  width: 22,
                  height: 22,
                ),
              ),
            ],
          ),
          const SizedBox(height: 13),
          Text('Предл. на осет.', style: theme.textTheme.bodyText1),
          Divider(color: theme.dividerColor),
          Text('Предл. на рус.', style: theme.textTheme.bodyText1),
          const SizedBox(
              height: 10), // -------------------------------------------
        ],
      ),
    );
  }
}
