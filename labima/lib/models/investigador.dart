/*
  TODO: Definir los atributos del tipo de solicitante
        investigador.
*/
/*
  ID_usuario: id_usuario int
  no_identificacion: no_control/RFC varchar
  nombre: nombre varchar
  apellido: apellido varchar
  Tecnologico: tecnologico varchar
  contrasegna: contrasegna varchar 
  correo: correo varchar
  sancion: sancion bool
  esDeudor: Bool
*/

import 'dart:ui' show hashValues;
import 'package:json_annotation/json_annotation.dart';
part 'investigador.g.dart';

@JsonSerializable()
class Investigador {
  @JsonKey(required: true)
  final String inid;
  final String noIdentificacion;
  final String nombre;
  final String apellido;
  final String tecnologico;
  final String contrasegna;
  final String correo;
  final bool sancion;
  final bool esDeudor;

  Investigador({
    required this.inid,
    required this.noIdentificacion,
    required this.nombre,
    required this.apellido,
    required this.tecnologico,
    required this.contrasegna,
    required this.correo,
    required this.sancion,
    required this.esDeudor,
  });

  factory Investigador.fromJson(Map<String, dynamic> json) =>
      _$InvestigadorFromJson(json);

  Map<String, dynamic> toJson() => _$InvestigadorToJson(this);

  @override
  operator ==(other) =>
      other is Investigador &&
      other.inid == inid &&
      other.noIdentificacion == noIdentificacion &&
      other.nombre == nombre &&
      other.apellido == apellido &&
      other.tecnologico == tecnologico &&
      other.contrasegna == contrasegna &&
      other.correo == correo &&
      other.sancion == sancion &&
      other.esDeudor == esDeudor;

  @override
  int get hashCode => hashValues(
        inid,
        noIdentificacion,
        nombre,
        apellido,
        tecnologico,
        contrasegna,
        correo,
        sancion,
        esDeudor,
      );
}
