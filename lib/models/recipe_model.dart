class RecipeModel {
  String title;
  String imageUrl;

  static final examples = <RecipeModel>[
    RecipeModel("Szakszuka",
        "https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/jajka_w_pomidorach_01-1.jpg"),
    RecipeModel("Chaczapuri",
        "https://www.mojegotowanie.pl/media/cache/default_view/uploads/media/recipe/0002/01/chaczapuri-adzarskie.jpeg")
  ];

  RecipeModel(this.title, this.imageUrl);
}
