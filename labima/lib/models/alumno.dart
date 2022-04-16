/*
  ID_usuario: id_usuario int
  no_control: no_control varchar
  nombre: nombre varchar
  apellido: apellido varchar
  carrera: nombre varchar [carrera/nombre]
  contrasegna: contrasegna varchar 
  correo: correo varchar
  esDeudor: Bool
*/

// ignore: todo
// TODO: ¿Cómo manejar el login para alumnos que sean encargados?
import 'dart:ui' show hashValues;
import 'package:json_annotation/json_annotation.dart';
part 'alumno.g.dart';

@JsonSerializable()
class Alumno {
  @JsonKey(required: true)
  final String aid;
  final String noControl;
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String carrera;
  final String contrasegna;
  final String correo;
  final bool sancion;
  final bool esDeudor;

  //Lista de clases registrdas por el alumno
  //final List<String> clases;

  Alumno({
    required this.aid,
    required this.noControl,
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.carrera,
    required this.contrasegna,
    required this.correo,
    required this.sancion,
    required this.esDeudor,
  });

  factory Alumno.fromJson(Map<String, dynamic> json) => _$AlumnoFromJson(json);

  Map<String, dynamic> toJson() => _$AlumnoToJson(this);

  @override
  operator ==(other) =>
      other is Alumno &&
      other.aid == aid &&
      other.noControl == noControl &&
      other.nombre == nombre &&
      other.apellidoPaterno == apellidoPaterno &&
      other.apellidoMaterno == apellidoMaterno &&
      other.carrera == carrera &&
      other.contrasegna == contrasegna &&
      other.correo == correo &&
      other.sancion == sancion &&
      other.esDeudor == esDeudor;

  @override
  int get hashCode => hashValues(aid, nombre, apellidoPaterno, apellidoMaterno,
      carrera, contrasegna, correo, sancion, esDeudor);
}
