import 'package:json_annotation/json_annotation.dart';

import 'ingredient_model.dart';

part 'OrderItemModel.g.dart';

@JsonSerializable()
class OrderItemModel {
  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'ingrediants')
  List<IngredientModel> ingredients;

  @JsonKey(name: 'price')
  String price; // Changed from String to double to match JSON data type

  @JsonKey(name: 'category')
  String category;

  @JsonKey(name: 'images')
  List<String> images;

  

  OrderItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.price,
    required this.category,
    required this.images,
    
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemModelToJson(this);
}
