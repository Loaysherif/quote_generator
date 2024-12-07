import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:quote_generator/favorites_controller.dart';

class FavoritesScreen extends StatelessWidget {
  final FavoritesController favoritesController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Quotes"),
        centerTitle: true,
      ),
      body: Obx(() {
        if (favoritesController.favorites.isEmpty) {
          return const Center(child: Text("No favorite quotes yet!"));
        }
        return ListView.builder(
          itemCount: favoritesController.favorites.length,
          itemBuilder: (context, index) {
            final quote = favoritesController.favorites[index];
            return ListTile(
              title: Text('"${quote["quote"]}"'),
              subtitle: Text('- ${quote["author"]}'),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  favoritesController.toggleFavorite(quote);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
