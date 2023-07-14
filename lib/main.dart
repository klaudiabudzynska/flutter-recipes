import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes/pages/favorite_page.dart';
import 'package:recipes/pages/recipe_page.dart';
import 'package:recipes/pages/recipes_page.dart';

import 'models/favorites_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoritesModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const RecipesPage(),
        RecipePage.routeName: (context) => const RecipePage(),
        FavoritePage.routeName: (context) => const FavoritePage(),
      },
    );
  }
}
