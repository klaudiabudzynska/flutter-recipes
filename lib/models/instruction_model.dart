class InstructionModel {
  List<Step> steps;

  InstructionModel(this.steps);

  static InstructionModel fromJson(Map<String, dynamic> json) =>
      InstructionModel((json['steps'] as List<dynamic>)
          .map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList());
}

class Step {
  int number;
  String step;

  Step(this.number, this.step);

  static Step fromJson(Map<String, dynamic> json) =>
      Step(json['number'] as int, json['step'] as String);
}
