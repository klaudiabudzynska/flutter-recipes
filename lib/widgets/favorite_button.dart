import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/favorites_model.dart';
import '../models/recipe_model.dart';

class FavoriteButton extends StatefulWidget {
  final RecipeModel recipe;

  const FavoriteButton(this.recipe, {super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritesModel>(
      builder: (context, favorites, _) {
        bool isFavorite = favorites.contains(widget.recipe);
        _isActive = isFavorite;

        return IconButton(
          iconSize: 40,
          icon: Icon(Icons.favorite,
              color: _isActive
                  ? Colors.deepPurple
                  : Color.fromARGB(255, 59, 56, 59)),
          onPressed: () {
            if (isFavorite) {
              favorites.removeFavorite(widget.recipe);
              setState(() {
                _isActive = false;
              });
            } else {
              favorites.addFavorite(widget.recipe);
              setState(() {
                _isActive = true;
              });
            }
          },
        );
      },
    );
  }
}
