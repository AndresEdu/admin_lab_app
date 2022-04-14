/*
  ID_maquina: id_maquina int
  nombre: nombre varchar 
  horas_prestada: horas_prestada int
  ultimo_mantto: ultimo_mantto datetime
  disponibilidad: disponibilidad bool
  piezas: piezas lista 
*/

class Maquina {
  final int mid;
  final String nombre;
  final int horasPrestada;
  final DateTime ultimoMantto;
  final bool disponibilidad;
  final List piezas;

  const Maquina({
    required this.mid,
    required this.nombre,
    required this.horasPrestada,
    required this.ultimoMantto,
    required this.disponibilidad,
    required this.piezas,
  });

  Map<String, dynamic> toJson() => {
        "mid": mid,
        "nombre": nombre,
        "horasPrestada": horasPrestada,
        "ultimoMantto": ultimoMantto,
        "disponibilidad": disponibilidad,
        "piezas": piezas,
      };
}
