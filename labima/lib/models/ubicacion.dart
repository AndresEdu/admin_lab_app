/*
 ID: id int
 nombre: nombre varchar
*/

class Ubicacion {
  final int ubid;
  final String nombre;
  final String seccion;

  const Ubicacion({
    required this.ubid,
    required this.nombre,
    required this.seccion,
  });

  Map<String, dynamic> toJson() => {
        "ubid": ubid,
        "nombre": nombre,
        "seccion": seccion,
      };
}
