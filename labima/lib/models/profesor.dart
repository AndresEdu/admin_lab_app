/*
  ID_Profesor: id_profesor int
  RFC: rfc varchar
  nombre: nombre varchar
  apellido: apellido
  contrasegna: contrasegna varchar 
  correo: correo varchar
  clases: List<Clases> //Clases que el profesor puede crear
*/
import 'dart:ui' show hashValues;
import 'package:json_annotation/json_annotation.dart';
part 'profesor.g.dart';

@JsonSerializable()

class Profesor {
  @JsonKey(required: true)
  final String pid;
  final String rfc;
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String contrasegna;
  final String correo;
  final bool sancion;
  final bool esDeudor;

  //final List<String> clases;
   Profesor({
    required this.pid,
    required this.rfc,
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.contrasegna,
    required this.correo,
    required this.sancion,
    required this.esDeudor,
  });

  factory Profesor.fromJson(Map<String, dynamic> json) => _$ProfesorFromJson(json);
  Map<String, dynamic> toJson() => _$ProfesorToJson(this);

  @override
  operator ==(other) =>
    other is Profesor &&
    other.pid == pid &&
    other.rfc == rfc &&
    other.nombre == nombre &&
    other.apellidoPaterno == apellidoPaterno &&
    other.apellidoMaterno == apellidoMaterno &&
    other.contrasegna == contrasegna &&
    other.correo == correo &&
    other.sancion == sancion &&
    other.esDeudor == esDeudor;

  @override
  int get hashCode => hashValues(pid, nombre, apellidoPaterno, apellidoMaterno, contrasegna, correo, sancion, esDeudor);

}
