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

class Maquina {
  final String mid;
  final String nombre;
  final int horasPrestada;
  final DateTime ultimoMantto;
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

  Maquina.fromJson(Map<String, dynamic> json)
      : mid = json["mid"],
        nombre = json["nombre"],
        horasPrestada = json["horasPrestada"],
        ultimoMantto = json["ultimoMantto"],
        disponibilidad = json["disponibilidad"],
        piezas = json["piezas"]
            .map<Pieza>((mapString) => Pieza.fromJson(mapString))
            .toList(Maquina.fromJson(json)),
        fotoUrl = json["fotoUrl"];

  Map<String, dynamic> toJson() => {
        "mid": mid,
        "nombre": nombre,
        "horasPrestada": horasPrestada,
        "ultimoMantto": ultimoMantto,
        "disponibilidad": disponibilidad,
        "piezas": piezas.map((i) => i.toJson()).toList(),
        "fotoUrl": fotoUrl,
      };
}
