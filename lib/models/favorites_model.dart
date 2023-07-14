import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:recipes/models/recipe_model.dart';

class FavoritesModel extends ChangeNotifier {
  final List<RecipeModel> _favorites = [];

  UnmodifiableListView<RecipeModel> get favorites =>
      UnmodifiableListView(_favorites);

  void addFavorite(RecipeModel recipe) {
    _favorites.add(recipe);
    notifyListeners();
  }

  void removeFavorite(RecipeModel recipe) {
    _favorites.remove(recipe);
    notifyListeners();
  }
}
