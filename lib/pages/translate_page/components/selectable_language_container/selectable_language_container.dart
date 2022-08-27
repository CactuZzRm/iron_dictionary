import 'package:flutter/material.dart';

import 'change_language_button.dart';
import 'language_circle.dart';
import 'language_container.dart';

class SelectableLanguageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 28),
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 19),
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.circular(25),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // LanguageContainer(
          //   assetRoute: 'Russia.png',
          //   language: 'Русский',
          //   isSelect: true,
          // ),
          Text('Русский', style: theme.textTheme.bodyText2),
          const SizedBox(width: 5),
          CircleLanguage(assetRoute: 'assets/Russia.png'),
          const SizedBox(width: 18),
          const ChangeLanguageButton(),
          const SizedBox(width: 18),
          CircleLanguage(assetRoute: 'assets/Ossetia.png'),
          const SizedBox(width: 5),
          Text('Осетинский', style: theme.textTheme.bodyText2),
          // LanguageContainer(
          //   assetRoute: 'Ossetia.png',
          //   language: 'Осетинский',
          //   isSelect: false,
          // ),
        ],
      ),
    );
  }
}
