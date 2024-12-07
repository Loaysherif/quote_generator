import 'package:get/get.dart';

class FavoritesController extends GetxController {
  var favorites = <Map<String, String>>[].obs;

  void toggleFavorite(Map<String, String> quote) {
    if (favorites.contains(quote)) {
      favorites.remove(quote);
    } else {
      favorites.add(quote);
    }
  }

  bool isFavorite(Map<String, String> quote) {
    return favorites.contains(quote);
  }
}
