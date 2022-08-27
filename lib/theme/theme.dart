import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeData _selectedTheme = darkTheme;
  static bool isDarkMode = true;

  ThemeChanger() {
    _selectedTheme = isDarkMode ? darkTheme : lightTheme;
  }

  ThemeData get getTheme => _selectedTheme;

  void changeTheme(bool isDarkMode) {
    _selectedTheme = isDarkMode ? darkTheme : lightTheme;
    notifyListeners();
  }

  static var yellowColor = const Color.fromRGBO(255, 190, 11, 1);
  static var nonActiveSwitchColor = const Color.fromRGBO(120, 120, 128, 1);
  static var translateElementsColor = Colors.white;

  static final darkTheme = ThemeData(
    //brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color.fromRGBO(28, 28, 30, 1),
    backgroundColor: const Color.fromRGBO(44, 44, 46, 1),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Color.fromRGBO(22, 22, 22, 1)),
    dividerColor: const Color.fromRGBO(56, 56, 58, 1),
    primaryColor: const Color.fromRGBO(67, 97, 238, 1),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color.fromRGBO(235, 235, 240, 1),
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
      headline2: TextStyle(
        color: Color.fromRGBO(235, 235, 240, 1),
        fontWeight: FontWeight.w400,
        fontSize: 24,
      ),
      headline3: TextStyle(
        color: Color.fromRGBO(235, 235, 240, 1),
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
      bodyText1: TextStyle( // medium
        color: Color.fromRGBO(235, 235, 240, 1),
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      bodyText2: TextStyle( //  small
        color: Color.fromRGBO(235, 235, 240, 1),
        fontWeight: FontWeight.w400,
        fontSize: 12
      ),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromRGBO(250, 250, 250, 1),
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Color.fromRGBO(249, 249, 249, 1)),
    dividerColor: const Color.fromRGBO(56, 56, 58, 1),
    primaryColor: const Color.fromRGBO(67, 97, 238, 1),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color.fromRGBO(101, 101, 101, 1),
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
      headline2: TextStyle(
        color: Color.fromRGBO(101, 101, 101, 1),
        fontWeight: FontWeight.w400,
        fontSize: 24,
      ),
      headline3: TextStyle(
        color: Color.fromRGBO(101, 101, 101, 1),
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
      bodyText1: TextStyle( // medium
        color: Color.fromRGBO(101, 101, 101, 1),
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      bodyText2: TextStyle( //  small
        color: Color.fromRGBO(101, 101, 101, 1),
        fontWeight: FontWeight.w400,
        fontSize: 12
      ),
    ),
  );
}
