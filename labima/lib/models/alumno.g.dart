// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alumno.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Alumno _$AlumnoFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['aid'],
  );
  return Alumno(
    aid: json['aid'] as String,
    noControl: json['noControl'] as String,
    nombre: json['nombre'] as String,
    apellidoPaterno: json['apellidoPaterno'] as String,
    apellidoMaterno: json['apellidoMaterno'] as String,
    carrera: json['carrera'] as String,
    contrasegna: json['contrasegna'] as String,
    correo: json['correo'] as String,
    esDeudor: json['esDeudor'] as bool,
  );
}

Map<String, dynamic> _$AlumnoToJson(Alumno instance) => <String, dynamic>{
      'aid': instance.aid,
      'noControl': instance.noControl,
      'nombre': instance.nombre,
      'apellidoPaterno': instance.apellidoPaterno,
      'apellidoMaterno': instance.apellidoMaterno,
      'carrera': instance.carrera,
      'contrasegna': instance.contrasegna,
      'correo': instance.correo,
      'esDeudor': instance.esDeudor,
    };
