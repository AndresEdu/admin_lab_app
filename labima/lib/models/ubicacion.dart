/*
 ID: id int
 nombre: nombre varchar
*/
import 'dart:ui' show hashValues;
import 'package:json_annotation/json_annotation.dart';
part 'ubicacion.g.dart';

@JsonSerializable()
class Ubicacion {

  @JsonKey(required: true)
  final String ubid;
  final String nombre;
  final String seccion;

  Ubicacion({
    required this.ubid,
    required this.nombre,
    required this.seccion,
  });

  factory Ubicacion.fromJson(Map<String, dynamic> json) => _$UbicacionFromJson(json);
  Map<String, dynamic> toJson() => _$UbicacionToJson(this);
  
  @override
  operator ==(other) =>
    other is Ubicacion &&
    other.ubid == ubid &&
    other.nombre == nombre &&
    other.seccion == seccion; 

  @override
  int get hashCode => hashValues(ubid, nombre, seccion);
}
