import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_generator/genre_selection_screen.dart';
import 'theme_controller.dart';

void main() {
  runApp(RandomQuoteApp());
}

class RandomQuoteApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  RandomQuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode:
            themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
        home: GenreSelectionScreen(),
      );
    });
  }
}
