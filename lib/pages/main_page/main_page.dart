import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iron_dictionary/pages/favorites_page/favorites_page.dart';
import 'package:iron_dictionary/pages/settings_page/settings_page.dart';
import '../translate_page/translate_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    TranslatePage(),
    FavoritesPage(),
    SettingsPage(),
  ];

  final screensName = [
    'Ossetic',
    'Избранное',
    'Настройки',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 104,
        elevation: 0,
        title: Text(
          screensName[currentIndex],
          style: theme.textTheme.headline1,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        //margin: const EdgeInsets.symmetric(vertical: 30),
        child: screens[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        selectedItemColor: theme.primaryColor,
        unselectedItemColor: theme.primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/Ae.svg'),
            label: 'Переводчик',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/Star.svg'),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/Settings.svg'),
            label: 'Настройки',
          ),
        ],
      ),
    );
  }
}
