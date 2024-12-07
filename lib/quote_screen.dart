import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_generator/favorites_controller.dart';
import 'package:quote_generator/favorites_screen.dart';
import 'package:quote_generator/quote_service.dart';

class QuoteScreen extends StatefulWidget {
  final String genre;

  const QuoteScreen({super.key, required this.genre});

  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  String quote = "Press the button to get a quote!";
  String author = "";
  final FavoritesController favoritesController =
      Get.put(FavoritesController());

  void fetchQuote() async {
    final newQuote = await QuoteService.getQuoteByGenre(widget.genre);
    setState(() {
      quote = newQuote['quote']!;
      author = newQuote['author']!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuote = {"quote": quote, "author": author};

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.genre} Quotes"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Get.to(() => FavoritesScreen());
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quote,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
            Text(
              author.isNotEmpty ? "- $author" : "",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: fetchQuote,
              child: const Text("Get Random Quote"),
            ),
            Obx(() {
              final isFavorite = favoritesController.isFavorite(currentQuote);
              return IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : null,
                ),
                onPressed: () {
                  favoritesController.toggleFavorite(currentQuote);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
