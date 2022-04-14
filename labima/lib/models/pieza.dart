/*
  ID_pieza: id_pieza int
  nombre: nombre varchar
  cant_total: cant_total int
  cant_disponible: cant_disponible int
  ubicacion: nombre varchar
  maquina: // nota: si la maquina es null, es una pieza general.
*/

class Pieza {
  final String pid;
  final String nombre;
  final int cantTotal;
  final int cantDisponible;
  final String ubicacion;
  final String maquina;

  const Pieza({
    required this.pid,
    required this.nombre,
    required this.cantTotal,
    required this.cantDisponible,
    required this.ubicacion,
    required this.maquina,
  });

  Pieza.fromJson(Map<String, dynamic> json)
      : pid = json["pid"],
        nombre = json["nombre"],
        cantTotal = json["cantTotal"],
        cantDisponible = json["cantDisponible"],
        ubicacion = json["ubicacion"],
        maquina = json["maquina"];

  Map<String, dynamic> toJson() => {
        "pid": pid,
        "nombre": nombre,
        "cantTotal": cantTotal,
        "cantDisponible": cantDisponible,
        "ubicacion": ubicacion,
        "maquina": maquina,
      };
}
