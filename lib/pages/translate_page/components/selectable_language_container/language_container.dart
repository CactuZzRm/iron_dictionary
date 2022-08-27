import 'package:flutter/material.dart';

import 'language_circle.dart';

class LanguageContainer extends StatelessWidget {
  final String assetRoute;
  final String language;
  bool isSelect;

  LanguageContainer({required this.assetRoute, required this.language, required this.isSelect});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Expanded(
      child: Row(
        mainAxisAlignment: isSelect ?  MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if(isSelect) Text(language, style: theme.textTheme.bodyText2),
          if(isSelect) const SizedBox(width: 5),
          if(!isSelect) const SizedBox(width: 15),
          CircleLanguage(assetRoute: assetRoute),
          if(!isSelect) const SizedBox(width: 5),
          if(!isSelect) Text(language),
          if(isSelect) const SizedBox(width: 15),
        ],
      ),
    );

    //return Expand()
  }
}
