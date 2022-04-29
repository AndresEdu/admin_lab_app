/*
  did: int
  Deudoress: List<Deudores> // Objetos
  profesores: List<Profesor> // Objetos
  investigadores: List<Investigador> // Objetos
*/

/*
  Deudoress:
    Num.Cotrol, Nombre, Deuda
  Profesor:
    RFC, Nombre, Deuda
  Investigador:
    Num.Control/RFC, Nombre, Deuda
*/

import 'package:labima/models/models.dart';
import 'dart:ui' show hashValues, hashList;
import 'package:json_annotation/json_annotation.dart';
part 'deudores.g.dart';

@JsonSerializable()
class Deudores {
  @JsonKey(required: true)
  final String did;
  final List<Alumno> alumnos;
  final List<Profesor> profesores;
  final List<Investigador> investigadores;

  //Lista de clases registrdas por el Deudores
  //final List<String> clases;

  Deudores({
    required this.did,
    required this.alumnos,
    required this.profesores,
    required this.investigadores,
  });

  factory Deudores.fromJson(Map<String, dynamic> json) =>
      _$DeudoresFromJson(json);

  Map<String, dynamic> toJson() => _$DeudoresToJson(this);

  @override
  operator ==(other) =>
      other is Deudores &&
      other.did == did &&
      other.alumnos == alumnos &&
      other.profesores == profesores &&
      other.investigadores == investigadores;

  @override
  int get hashCode => hashValues(
      did, hashList(alumnos), hashList(profesores), hashList(investigadores));
}
