import 'package:json_annotation/json_annotation.dart';
part 'CompteModel.g.dart';
@JsonSerializable()
class Compte
{
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'motDePasse')
  String motDePasse ;
  Compte({required this.email, required this.motDePasse,required this.name});
  factory Compte.fromJson(Map<String, dynamic> json) => _$CompteFromJson(json);
  Map<String, dynamic> toJson() => _$CompteToJson(this);

}