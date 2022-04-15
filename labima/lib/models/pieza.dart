/*
  ID_pieza: id_pieza int
  nombre: nombre varchar
  cant_total: cant_total int
  cant_disponible: cant_disponible int
  ubicacion: nombre varchar
  maquina: // nota: si la maquina es null, es una pieza general.
  fotoUrl: varchar
*/
import 'dart:ui' show hashValues;
import 'package:json_annotation/json_annotation.dart';
part 'pieza.g.dart';

@JsonSerializable()
class Pieza {
  @JsonKey(required: true)
  final String pid;
  final String nombre;
  final int cantTotal;
  final int cantDisponible;
  final String ubicacion;
  final String maquina;
  final String fotoUrl;

  const Pieza({
    required this.pid,
    required this.nombre,
    required this.cantTotal,
    required this.cantDisponible,
    required this.ubicacion,
    required this.maquina,
    required this.fotoUrl,
  });

<<<<<<< HEAD
  Pieza.fromJson(Map<String, dynamic> json)
      : pid = json["pid"],
        nombre = json["nombre"],
        cantTotal = json["cantTotal"],
        cantDisponible = json["cantDisponible"],
        ubicacion = json["ubicacion"],
        maquina = json["maquina"];
        fotoUrl = json["fotoUrl"];

  Map<String, dynamic> toJson() => {
        "pid": pid,
        "nombre": nombre,
        "cantTotal": cantTotal,
        "cantDisponible": cantDisponible,
        "ubicacion": ubicacion,
        "maquina": maquina,
        "fotoUrl": fotoUrl,
      };
=======
  factory Pieza.fromJson(Map<String, dynamic> json) => _$PiezaFromJson(json);

  Map<String, dynamic> toJson() => _$PiezaToJson(this);

  @override
  operator ==(other) =>
      other is Pieza &&
      other.pid == pid &&
      other.cantTotal == cantTotal &&
      other.nombre == nombre &&
      other.cantDisponible == cantDisponible &&
      other.ubicacion == ubicacion &&
      other.maquina == maquina;

  @override
  int get hashCode =>
      hashValues(pid, nombre, cantDisponible, ubicacion, maquina);
>>>>>>> ac323a6 (Refactorizar métodos fromJson y toJson)
}
