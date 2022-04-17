/*
  ID_encargado: id_encargado int
  no_control: no_control varchar
  nombre: nombre varchar
  apellido: apellido varchar
  carrera: nombre varchar [carrera/nombre]
  contrasegna: contrasegna varchar 
  correo: correo varchar
  horas servicio: hrs_serv dateTime
*/

// TODO: ¿Servirá reutilizar la clase alumno? SI
//       ¿Se deberá crear una clase trabajador? SI

import 'dart:ui' show hashValues;
import 'package:json_annotation/json_annotation.dart';
part 'encargado.g.dart';

@JsonSerializable()
class Encargado {
  @JsonKey(required: true)
  final String encid;
  final String noControl;
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String carrera;
  final String contrasegna;
  final String correo;
  final DateTime hrInicio;
  final DateTime hrFinal;
  final int hrTotal;

  Encargado({
    required this.encid,
    required this.noControl,
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.carrera,
    required this.contrasegna,
    required this.correo,
    required this.hrInicio,
    required this.hrFinal,
    required this.hrTotal,
  });

  factory Encargado.fromJson(Map<String, dynamic> json) =>
      _$EncargadoFromJson(json);

  Map<String, dynamic> toJson() => _$EncargadoToJson(this);

  @override
  operator ==(other) =>
      other is Encargado &&
      other.encid == encid &&
      other.noControl == noControl &&
      other.nombre == nombre &&
      other.apellidoPaterno == apellidoPaterno &&
      other.apellidoMaterno == apellidoMaterno &&
      other.carrera == carrera &&
      other.contrasegna == contrasegna &&
      other.correo == correo &&
      other.hrInicio == hrInicio &&
      other.hrFinal == hrFinal &&
      other.hrTotal == hrTotal;

  @override
  int get hashCode => hashValues(
      encid,
      nombre,
      apellidoPaterno,
      apellidoMaterno,
      carrera,
      contrasegna,
      correo,
      hrInicio,
      hrFinal,
      hrTotal);
}
