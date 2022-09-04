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
        const SizedBox(height: 13),
        const Divider(),
        const SizedBox(height: 13), // ??? 20 - 7 = 13 (Определил на глаз)
        InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: 61,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: theme.backgroundColor),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('О нас', style: theme.textTheme.headline3),
            ),
          ),
        ),
      ],
    );
  }
}
