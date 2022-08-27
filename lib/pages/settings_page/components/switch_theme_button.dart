import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../../../theme/theme.dart';


class SwitchThemeButton extends StatelessWidget{
  String buttonText;
  bool darkThemeFlag = ThemeChanger.isDarkMode;
  
  SwitchThemeButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeChanger = Provider.of<ThemeChanger>(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(buttonText, style: const TextStyle(fontSize: 16)),
          FlutterSwitch(
            width: 51,
            height: 31,
            padding: 2,
            toggleSize: 27,
            activeColor: theme.primaryColor.withOpacity(1),
            inactiveColor: ThemeChanger.nonActiveSwitchColor.withOpacity(0.16),
            toggleColor: Colors.white,
            value: ThemeChanger.isDarkMode,
            onToggle: (val) {
              ThemeChanger.isDarkMode = val;
              themeChanger.changeTheme(val);          
            },
          ),
        ],
      ),
    );
  }
}
