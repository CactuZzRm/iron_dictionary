import 'package:flutter/material.dart';

import 'components/switch_theme_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SwitchThemeButton(buttonText: 'Тёмная тема'),
        Divider(),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
          ),
          child: Text(
            'О нас',
            style: theme.textTheme.headline3,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
