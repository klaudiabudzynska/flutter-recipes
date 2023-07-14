import 'package:flutter/material.dart';
import 'package:recipes/pages/recipe_page.dart';
import 'package:recipes/widgets/favorite_button.dart';

import '../models/recipe_model.dart';

class Recipe extends StatelessWidget {
  final RecipeModel recipe;

  const Recipe(this.recipe, {super.key});

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
                FavoriteButton(recipe),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
