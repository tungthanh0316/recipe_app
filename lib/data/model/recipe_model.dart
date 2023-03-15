class RecipeModel {
  factory RecipeModel.fromJson(Map<String, dynamic> json) => RecipeModel(
        calories: json['calories'],
        carbos: json['carbos'],
        description: json['description'],
        difficulty: json['difficulty'],
        fats: json['fats'],
        headline: json['headline'],
        id: json['id'],
        image: json['image'],
        name: json['name'],
        proteins: json['proteins'],
        thumb: json['thumb'],
        time: json['time'],
      );

  RecipeModel(
      {this.calories,
      this.carbos,
      this.description,
      this.difficulty,
      this.fats,
      this.headline,
      this.id,
      this.image,
      this.name,
      this.proteins,
      this.thumb,
      this.time});

  final String? calories;
  final String? carbos;
  final String? description;
  final int? difficulty;
  final String? fats;
  final String? headline;
  final String? id;
  final String? image;
  final String? name;
  final String? proteins;
  final String? thumb;
  final String? time;
}
