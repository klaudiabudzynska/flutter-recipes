import 'package:dio/dio.dart';
import 'package:recipes/api/responses/recipe_search_response.dart';
import 'package:recipes/secrets.dart';

isSuccessfulStatusCode(int statusCode) => statusCode >= 200 && statusCode < 400;

class Api {
  final dio = Dio(
    BaseOptions(
        baseUrl: "https://api.spoonacular.com",
        queryParameters: <String, dynamic>{
          "apiKey": Secrets.apiKey,
        },
        responseType: ResponseType.json),
  );

  Future<RecipeSearchResponse> searchRecipes([String? query]) async {
    final result = await dio.get(
      "/recipes/complexSearch",
      queryParameters: <String, dynamic>{
        "query": query,
      },
    );

    if (isSuccessfulStatusCode(result.statusCode!)) {
      return RecipeSearchResponse.fromJson(result.data);
    } else {
      throw result.statusMessage!;
    }
  }

  Future<RecipeSearchResponse> searchRecipe(int id) async {
    final result = await dio.get(
      "/recipes/$id/information",
    );

    if (isSuccessfulStatusCode(result.statusCode!)) {
      return RecipeSearchResponse.fromJson(result.data);
    } else {
      throw result.statusMessage!;
    }
  }
}
