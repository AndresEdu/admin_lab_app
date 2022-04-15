// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pieza.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pieza _$PiezaFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['pid'],
  );
  return Pieza(
    pid: json['pid'] as String,
    nombre: json['nombre'] as String,
    cantTotal: json['cantTotal'] as int,
    cantDisponible: json['cantDisponible'] as int,
    ubicacion: json['ubicacion'] as String,
    maquina: json['maquina'] as String,
    fotoUrl: json['fotoUrl'] as String,
  );
}

Map<String, dynamic> _$PiezaToJson(Pieza instance) => <String, dynamic>{
      'pid': instance.pid,
      'nombre': instance.nombre,
      'cantTotal': instance.cantTotal,
      'cantDisponible': instance.cantDisponible,
      'ubicacion': instance.ubicacion,
      'maquina': instance.maquina,
      'fotoUrl': instance.fotoUrl,
    };
