import 'package:json_annotation/json_annotation.dart';
part 'ingredient_model.g.dart';
@JsonSerializable()
class IngredientModel {
  String ingredient; // Utilisez String? pour indiquer que la valeur peut être null
  String id;
  String price;

  IngredientModel({required this.ingredient, required this.id,required this.price});

  factory IngredientModel.fromJson(Map<String, dynamic> json) {
    return IngredientModel(
      price: json['price'] as String,
      ingredient: json['ingrediant'] as String, // Cast as String? qui accepte null
      id: json['_id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ingrediant': ingredient,
      '_id': id,
    };
  }
}

