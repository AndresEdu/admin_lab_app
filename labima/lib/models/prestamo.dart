/*
  ID_prestamo: id_prestamo int 
  encargado: eid int 
  solicitante: sid List<int>
  tipoSolicitante: int // Nota: 1 - Alumno, 2 - Profesor, 3 - Investigador
  
  maquina: mid // Si el prestamo no requiere maquina este valor es nulo
  piezas: map<Pieza, int> // El primer int es el id de la pieza y el segundo 
                           la cantidad solicitada.

  fechaPrestamo: dateTime
  horaInicial: dateTime
  horaLimite: dateTime     

  prid: "ajskxx7889",
  encargado: "sjksjsd897",
  solicitante: "jskjkdsj89",
  tipoSolicitante: 1,

  maquina: "aksk456",
  detallesPrestamo: {
    detalles1: "iddetallesprestamo1",
    detalles2: "iddetallesprestamo2"
  }                   
*/

import 'dart:html';
import 'dart:ui' show hashValues, hashList;
import 'package:json_annotation/json_annotation.dart';
part 'prestamo.g.dart';

@JsonSerializable()
class Prestamo {
  @JsonKey(required: true)
  final String prid;
  final String encargadoId;
  final List<String> solicitantesIds;
  final int tipoSolicitante;
  final String maquinaId;
  final List<Map<String, int>> prestaPiezas; // String idPieza, Int: cantidad
  final DateTime fecha;
  final DateTime horaInicial;
  final DateTime horaLimite;

  Prestamo({
    required this.prid,
    required this.encargadoId,
    required this.solicitantesIds,
    required this.tipoSolicitante,
    required this.maquinaId,
    required this.prestaPiezas,
    required this.fecha,
    required this.horaInicial,
    required this.horaLimite,
  });
  factory Prestamo.fromJson(Map<String, dynamic> json) =>
      _$PrestamoFromJson(json);

  Map<String, dynamic> toJson() => _$PrestamoToJson(this);

  @override
  operator ==(other) =>
      other is Prestamo &&
      other.prid == prid &&
      other.encargadoId == encargadoId &&
      other.solicitantesIds == solicitantesIds &&
      other.tipoSolicitante == tipoSolicitante &&
      other.maquinaId == maquinaId &&
      other.prestaPiezas == prestaPiezas &&
      other.fecha == fecha &&
      other.horaInicial == horaInicial &&
      other.horaLimite == horaLimite;

  @override
  int get hashCode => hashValues(
      prid,
      encargadoId,
      tipoSolicitante,
      maquinaId,
      fecha,
      horaInicial,
      horaLimite,
      hashList(solicitantesIds),
      hashList(prestaPiezas));
}
