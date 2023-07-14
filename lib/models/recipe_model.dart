class RecipeModel {
  int? id;
  String title;
  String imageUrl;

  static final examples = <RecipeModel>[
    RecipeModel("Szakszuka",
        "https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/jajka_w_pomidorach_01-1.jpg"),
    RecipeModel("Chaczapuri",
        "https://cdn.galleries.smcloud.net/t/photos/gf-4CXe-ugW6-GUKj_smakowite-chaczapuri-ze-szpinakiem-przepis-na-pyszny-placek-serowy-rodem-z-gruzji.jpg")
  ];

  RecipeModel(
    this.title,
    this.imageUrl, {
    this.id,
  });

  static RecipeModel fromJson(Map<String, dynamic> json) => RecipeModel(
        json['title'] as String,
        json['image'] as String,
        id: json['id'] as int,
      );
}
