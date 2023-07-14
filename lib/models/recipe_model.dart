import 'package:recipes/models/instruction_model.dart';

class RecipeModel {
  int? id;
  String title;
  String imageUrl;
  int servings;
  int readyInMinutes;
  List<InstructionModel> analyzedInstructions;

  RecipeModel(
    this.id,
    this.title,
    this.imageUrl,
    this.servings,
    this.readyInMinutes,
    this.analyzedInstructions,
  );

  static RecipeModel fromJson(Map<String, dynamic> json) => RecipeModel(
      json['id'] as int,
      json['title'] as String,
      json['image'] as String,
      json['servings'] as int,
      json['readyInMinutes'] as int,
      (json['analyzedInstructions'] as List<dynamic>)
          .map((e) => InstructionModel.fromJson(e as Map<String, dynamic>))
          .toList());
}
