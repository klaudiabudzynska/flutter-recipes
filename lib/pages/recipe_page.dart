import 'package:flutter/material.dart';
import 'package:recipes/models/recipe_model.dart';

class RecipePage extends StatelessWidget {
  static const routeName = '/recipe';

  @override
  Widget build(BuildContext context) {
    final recipe = ModalRoute.of(context)!.settings.arguments as RecipeModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Recipes App'),
      ),
      body: Column(children: [
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
            IconButton(
              iconSize: 40,
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
      ]),
    );
  }
}
