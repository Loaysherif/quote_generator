import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_generator/quote_screen.dart';
import 'package:quote_generator/theme_controller.dart';

class GenreSelectionScreen extends StatelessWidget {
  final List<Map<String, dynamic>> genres = [
    {"title": "Funny", "icon": Icons.emoji_emotions, "color": Colors.orange},
    {"title": "Love", "icon": Icons.favorite, "color": Colors.red},
    {"title": "Inspirational", "icon": Icons.lightbulb, "color": Colors.yellow},
    {"title": "Life", "icon": Icons.nature_people, "color": Colors.green},
    {"title": "Motivational", "icon": Icons.mood, "color": Colors.blue},
    {
      "title": "Wisdom",
      "icon": Icons.book,
      "color": Colors.purple
    }, // New Genre
  ];

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose a Genre"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(themeController.isDarkMode.value
                ? Icons.light_mode
                : Icons.dark_mode),
            onPressed: () {
              themeController.toggleTheme();
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: genres.length,
        itemBuilder: (context, index) {
          final genre = genres[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuoteScreen(genre: genre['title']),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: genre['color'],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(genre['icon'], size: 50, color: Colors.white),
                  const SizedBox(height: 8),
                  Text(
                    genre['title'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
