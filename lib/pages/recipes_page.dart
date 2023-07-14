import 'package:flutter/material.dart';

import '../api/api.dart';
import '../api/responses/recipe_search_response.dart';
import '../widgets/recipe.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  late Future<RecipeSearchResponse> recipesRequest;

  @override
  void initState() {
    super.initState();

    recipesRequest = Api().searchRecipes();
  }

  void _onItemTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Recipes App'),
      ),
      body: Center(
        child: FutureBuilder(
          future: recipesRequest,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: snapshot.data!.results
                    .map((recipe) => Recipe(recipe))
                    .toList(),
              );
            }

            if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return const Text('Loading...');
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
