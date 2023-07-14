import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/favorites_model.dart';
import '../widgets/recipe.dart';

class FavoritePage extends StatelessWidget {
  static const routeName = '/favorite';

  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoritesModel>(
      builder: (context, favoritesModel, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Recipes App'),
          ),
          body: Column(
            children: favoritesModel.favorites
                .map((recipe) => Recipe(recipe))
                .toList(),
          ),
        );
      },
    );
  }
}
