/*
  ID_usuario: id_usuario int
  no_control: no_control varchar
  nombre: nombre varchar
  apellido: apellido varchar
  carrera: nombre varchar [carrera/nombre]
  contrasegna: contrasegna varchar 
  correo: correo varchar
  esDeudor: Bool
*/

// ignore: todo
// TODO: ¿Cómo manejar el login para alumnos que sean encargados?
class Alumno {
  final String aid;
  final String noControl;
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String carrera;
  final String contrasegna;
  final String correo;
  final bool esDeudor;

  const Alumno({
    required this.aid,
    required this.noControl,
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.carrera,
    required this.contrasegna,
    required this.correo,
    required this.esDeudor,
  });

  Alumno.fromJson(Map<String, dynamic> json)
      : aid = json["aid"],
        noControl = json["noControl"],
        nombre = json["nombre"],
        apellidoPaterno = json["apellidoPaterno"],
        apellidoMaterno = json["apellidoMaterno"],
        carrera = json["carrera"],
        contrasegna = json["contrasegna"],
        correo = json["correo"],
        esDeudor = json["esDeudor"];

  Map<String, dynamic> toJson() => {
        "aid": aid,
        "noControl": noControl,
        "nombre": nombre,
        "apellidoPaterno": apellidoPaterno,
        "apellidoMaterno": apellidoMaterno,
        "carrera": carrera,
        "contrasegna": contrasegna,
        "correo": correo,
        "esDeudor": esDeudor,
      };
}
