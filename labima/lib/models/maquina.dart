/*
  ID_maquina: id_maquina int
  nombre: nombre varchar 
  horas_prestada: horas_prestada int
  ultimo_mantto: ultimo_mantto datetime
  disponibilidad: disponibilidad bool
  piezas: piezas lista 
  fotoUrl: varchar
*/

import 'package:labima/models/pieza.dart';
import 'dart:ui' show hashValues, hashList;
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
part 'maquina.g.dart';

@JsonSerializable(explicitToJson: true)
class Maquina {
  final String mid;
  final String nombre;
  final int horasPrestada;
  final String ultimoMantto; // Fecha en formato aaaa-mm-dd
  final bool disponibilidad;
  final List<Pieza> piezas;
  final String fotoUrl;

  const Maquina({
    required this.mid,
    required this.nombre,
    required this.horasPrestada,
    required this.ultimoMantto,
    required this.disponibilidad,
    required this.piezas,
    required this.fotoUrl,
  });

  factory Maquina.fromJson(Map<String, dynamic> json) =>
      _$MaquinaFromJson(json);

  Map<String, dynamic> toJson() => _$MaquinaToJson(this);

  @override
  operator ==(other) {
    Function deepEq = const DeepCollectionEquality().equals;

    return other is Maquina &&
        other.mid == mid &&
        other.horasPrestada == horasPrestada &&
        other.nombre == nombre &&
        other.ultimoMantto == ultimoMantto &&
        other.disponibilidad == disponibilidad &&
        deepEq(other.piezas, piezas);
  }

  @override
  int get hashCode => hashValues(mid, nombre, ultimoMantto, horasPrestada,
      disponibilidad, hashList(piezas));
}
