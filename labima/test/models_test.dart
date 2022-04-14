import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/alumno.dart';

void main() {
  group('Alumno', () {
    test('Generar map a partir de Alumno', () {
      Alumno alumno = const Alumno(
          aid: "ax1914",
          noControl: "19141205",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          carrera: "ISC",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          esDeudor: false);

      Map<String, dynamic> json = <String, dynamic>{};
      json["aid"] = "ax1914";
      json["noControl"] = "19141205";
      json["nombre"] = "Fernando";
      json["apellidoPaterno"] = "Rivera";
      json["apellidoMaterno"] = "Mendez";
      json["carrera"] = "ISC";
      json["contrasegna"] = "123456";
      json["correo"] = "l19141205@queretaro.tecnm.mx";
      json["esDeudor"] = false;

      expect(alumno.toJson(), json);
    });
  });
}
