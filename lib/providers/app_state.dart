import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = [];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      removeFromFavorites(current);
    } else {
      addToFavorites(current);
    }
  }

  void addToFavorites(WordPair item) {
    favorites.add(item);
    notifyListeners();
  }

  void removeFromFavorites(WordPair item) {
    favorites.remove(item);
    notifyListeners();
  }
}