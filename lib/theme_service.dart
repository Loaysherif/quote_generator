// import 'package:shared_preferences/shared_preferences.dart';

// class ThemeService {
//   static const String _themeKey = 'themeMode';

//   Future<void> saveThemeMode(bool isDarkMode) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool(_themeKey, isDarkMode);
//   }

//   Future<bool> getThemeMode() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getBool(_themeKey) ?? false; // Default to light mode
//   }
// }