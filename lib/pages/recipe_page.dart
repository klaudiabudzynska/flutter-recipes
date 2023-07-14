import 'package:flutter/material.dart';
import 'package:recipes/models/recipe_model.dart';
import 'package:recipes/widgets/favorite_button.dart';

class RecipePage extends StatelessWidget {
  static const routeName = '/recipe';

  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final recipe = ModalRoute.of(context)!.settings.arguments as RecipeModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Recipes App'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.network(recipe.imageUrl, width: 280),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  recipe.title,
                ),
              ),
              FavoriteButton(recipe),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Icon(Icons.person),
                    Text('Servings: ${recipe.servings}'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Icon(Icons.schedule),
                    Text('Preparation: ${recipe.readyInMinutes}min'),
                  ],
                ),
              )
            ],
          ),
          ListView(
            padding: const EdgeInsets.all(20.0),
            shrinkWrap: true,
            children: recipe.analyzedInstructions[0].steps
                .map((instruction) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          "Step ${instruction.number}: ${instruction.step}"),
                    ))
                .toList(),
          ),
        ]),
      ),
    );
  }
}
