/*  
  ID_Carrera: id_carrera int 
  nombre: nombre varchar
*/
import 'dart:ui' show hashValues;

class Carrera {
  final String cid;
  final String nombre;

  Carrera({
    required this.cid,
    required this.nombre,
  });

  Carrera.fromJson(Map<String, dynamic> json)
      : cid = json["cid"],
        nombre = json["nombre"];

  Map<String, dynamic> toJson() => {
        "cid": cid,
        "nombre": nombre,
      };

  @override
  operator ==(other) =>
      other is Carrera && other.cid == cid && other.nombre == nombre;

  @override
  int get hashCode => hashValues(cid, nombre);
}
