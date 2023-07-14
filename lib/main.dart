import 'package:flutter/material.dart';
import 'package:recipes/models/recipe_model.dart';
import 'package:recipes/pages/recipe_page.dart';
import 'package:recipes/pages/recipes_page.dart';

void main() {
  runApp(const MyApp());
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
        '/': (context) => RecipesPage(),
        RecipePage.routeName: (context) => RecipePage(),
      },
    );
  }
}
