import 'package:flutter/material.dart';

import '../models/recipe_model.dart';

class Recipe extends StatelessWidget {
  final RecipeModel recipe;

  Recipe(this.recipe, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(recipe.imageUrl, width: 200),
        Text(recipe.title),
      ],
    );
  }
}
