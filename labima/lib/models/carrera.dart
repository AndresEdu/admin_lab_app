/*  
  ID_Carrera: id_carrera int 
  nombre: nombre varchar
*/
import 'dart:ui' show hashValues;
import 'package:json_annotation/json_annotation.dart';
part 'carrera.g.dart';

@JsonSerializable()
class Carrera {
  @JsonKey(required: true)
  final String cid;
  final String nombre;

  Carrera({
    required this.cid,
    required this.nombre,
  });

  factory Carrera.fromJson(Map<String, dynamic> json) =>
      _$CarreraFromJson(json);

  Map<String, dynamic> toJson() => _$CarreraToJson(this);

  @override
  operator ==(other) =>
      other is Carrera && other.cid == cid && other.nombre == nombre;

  @override
  int get hashCode => hashValues(cid, nombre);
}
