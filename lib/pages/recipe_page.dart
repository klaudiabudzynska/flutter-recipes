import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes/models/recipe_model.dart';

import '../models/favorites_model.dart';

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
      ]),
    );
  }
}
