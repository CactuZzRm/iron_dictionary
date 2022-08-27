import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/main_page/main_page.dart';
import 'providers/words.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Words()),
        ChangeNotifierProvider(create: (context) => ThemeChanger()),
      ],
      child: Consumer<ThemeChanger>(
        builder: (context, themeChanger, child) {
          return MaterialApp(
            theme: themeChanger.getTheme,
            home: MainPage(),
          );
        },
        //child:
      ),
    );
  }
}
