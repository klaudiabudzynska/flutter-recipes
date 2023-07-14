import 'package:flutter/material.dart';

import '../models/recipe_model.dart';
import '../widgets/recipe.dart';

class RecipesPage extends StatelessWidget {
  RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
        Recipe(RecipeModel.examples[0]),
      ],
    );
  }
}
