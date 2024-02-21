import 'package:json_annotation/json_annotation.dart';
part 'CategoryModel.g.dart';
@JsonSerializable()
class CategoryModel {
  @JsonKey(name: 'pissa')
  String id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'image')
  String images;
 

  CategoryModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.images,
      });
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>_$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
