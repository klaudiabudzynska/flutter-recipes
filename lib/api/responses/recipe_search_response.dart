import '../../models/recipe_model.dart';

class RecipeSearchResponse {
  int offset;
  int number;
  List<RecipeModel> results;
  int totalResults;

  RecipeSearchResponse({
    required this.offset,
    required this.number,
    required this.results,
    required this.totalResults,
  });

  static RecipeSearchResponse fromJson(Map<String, dynamic> json) =>
      RecipeSearchResponse(
        offset: json['offset'] as int,
        number: json['number'] as int,
        results: (json['results'] as List<dynamic>)
            .map((e) => RecipeModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        totalResults: json['totalResults'] as int,
      );
}
