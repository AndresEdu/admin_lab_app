/*
  Deuda: 
    int ddid 

    piezas: 
      {
        piezaid: sdadasd,
        cantidad_debe: 
      }

  
*/

import 'dart:ui' show hashValues, hashList;
import 'package:json_annotation/json_annotation.dart';
part 'deudas.g.dart';

@JsonSerializable()
class Deuda {
  @JsonKey(required: true)
  final String ddid;
  /*
    String: id de pieza
    int: Cantidad que debe
  */
  final List<Map<String, int>> debePiezas;

  //Lista de clases registrdas por el Deuda
  //final List<String> clases;

  Deuda({required this.ddid, required this.debePiezas});

  factory Deuda.fromJson(Map<String, dynamic> json) => _$DeudaFromJson(json);

  Map<String, dynamic> toJson() => _$DeudaToJson(this);

  @override
  operator ==(other) =>
      other is Deuda && other.ddid == ddid && other.debePiezas == debePiezas;

  @override
  int get hashCode => hashValues(ddid, hashList(debePiezas));
}
