/*
  ID_Devolucion: id_Devolucion int 
  encargado: eid int 
  solicitante: sid int
  prestamo: int // Nota: 1 - Alumno, 2 - Profesor, 3 - Investigador
  
  maquina: mid // Si el Devolucion no requiere maquina este valor es nulo
  piezas: map<int, List<int>(2)> 
  // El primer int es el id de la pieza, el primer int
  // de la lista es la cantidad esperada y el segundo es la cantidad
  // devuelta.

  fechaDevolucion: List<DateTime>
  devolucionCompleta: bool
*/

import 'package:labima/models/prestamo.dart';
import 'dart:ui' show hashValues, hashList;
import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
part 'devolucion.g.dart';

@JsonSerializable(explicitToJson: true)
class Devolucion {
  @JsonKey(required: true)
  final String dvid;
  final String encargadoId;
  final Prestamo prestamo;
  final List<Map<String, int>> devuelvePiezas; // String idPieza, Int: cantidad
  final DateTime fecha;
  final bool completo;

  Devolucion({
    required this.dvid,
    required this.encargadoId,
    required this.prestamo,
    required this.devuelvePiezas,
    required this.fecha,
    required this.completo,
  });
  factory Devolucion.fromJson(Map<String, dynamic> json) =>
      _$DevolucionFromJson(json);

  Map<String, dynamic> toJson() => _$DevolucionToJson(this);

  @override
  operator ==(other) {
    Function deepEq = const DeepCollectionEquality().equals;

    return other is Devolucion &&
        other.dvid == dvid &&
        other.encargadoId == encargadoId &&
        deepEq(other.devuelvePiezas, devuelvePiezas) &&
        other.prestamo == prestamo &&
        other.completo == completo &&
        other.fecha == fecha;
  }

  @override
  int get hashCode => hashValues(
      dvid, encargadoId, prestamo, completo, fecha, hashList(devuelvePiezas));
}
