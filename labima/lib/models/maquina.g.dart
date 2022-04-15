// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maquina.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Maquina _$MaquinaFromJson(Map<String, dynamic> json) => Maquina(
      mid: json['mid'] as String,
      nombre: json['nombre'] as String,
      horasPrestada: json['horasPrestada'] as int,
      ultimoMantto: DateTime.parse(json['ultimoMantto'] as String),
      disponibilidad: json['disponibilidad'] as bool,
      piezas: (json['piezas'] as List<dynamic>)
          .map((e) => Pieza.fromJson(e as Map<String, dynamic>))
          .toList(),
      fotoUrl: json['fotoUrl'] as String,
    );

Map<String, dynamic> _$MaquinaToJson(Maquina instance) => <String, dynamic>{
      'mid': instance.mid,
      'nombre': instance.nombre,
      'horasPrestada': instance.horasPrestada,
      'ultimoMantto': instance.ultimoMantto.toIso8601String(),
      'disponibilidad': instance.disponibilidad,
      'piezas': instance.piezas.map((e) => e.toJson()).toList(),
      'fotoUrl': instance.fotoUrl,
    };
