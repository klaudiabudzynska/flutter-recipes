import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes/models/favorites_model.dart';
import 'package:recipes/pages/recipe_page.dart';

import '../models/recipe_model.dart';

class Recipe extends StatelessWidget {
  final RecipeModel recipe;

  Recipe(this.recipe, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          RecipePage.routeName,
          arguments: recipe,
        ),
        child: Column(
          children: [
            Image.network(recipe.imageUrl, width: 280),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    // style: Theme.of(context).textTheme.displaySmall,
                    recipe.title,
                  ),
                ),
                Consumer<FavoritesModel>(
                  builder: (context, favorites, _) {
                    return IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.favorite),
                      onPressed: () {
                        favorites.addFavorite(recipe);
                      },
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
