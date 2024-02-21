// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OrderItemModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    OrderItemModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      ingredients: (json['ingrediants'] as List<dynamic>)
        .map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
        .toList(),
      price: (json['price'] as String),
      category: json['category'] as String,
      images:
          List<String>.from(json['images'].map((e) => e.toString()))
     
    );

Map<String, dynamic> _$OrderItemModelToJson(OrderItemModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'ingrediants': instance.ingredients,
      'price': instance.price,
      'category': instance.category,
      'images': instance.images,
      
    };
