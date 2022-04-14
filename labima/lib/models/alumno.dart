/*
  ID_usuario: id_usuario int
  no_control: no_control varchar
  nombre: nombre varchar
  apellido: apellido varchar
  carrera: nombre varchar [carrera/nombre]
  contrasegna: contrasegna varchar 
  correo: correo varchar
*/
class Alumno {
  final int aid;
  final String noControl;
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String carrera;
  final String contrasegna;
  final String correo;

  const Alumno({
    required this.aid,
    required this.noControl,
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.carrera,
    required this.contrasegna,
    required this.correo,
  });

  Map<String, dynamic> toJson() => {
        "aid": aid,
        "noControl": noControl,
        "nombre": nombre,
        "apellidoPaterno": apellidoPaterno,
        "apellidoMaterno": apellidoMaterno,
        "carrera": carrera,
        "contrasegna": contrasegna,
        "correo": correo,
      };
}
