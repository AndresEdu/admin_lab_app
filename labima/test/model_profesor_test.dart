import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
  group('Profesor', () {
    test('Generar map a partir de Profesor', () {
      Profesor profesor = Profesor(
          pid: "ax1914",
          rfc: "AIAA011206UL6",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: false);

      Map<String, dynamic> json = <String, dynamic>{};
      json["pid"] = "ax1914";
      json["rfc"] = "AIAA011206UL6";
      json["nombre"] = "Fernando";
      json["apellidoPaterno"] = "Rivera";
      json["apellidoMaterno"] = "Mendez";
      json["contrasegna"] = "123456";
      json["correo"] = "l19141205@queretaro.tecnm.mx";
      json["sancion"] = true;
      json["esDeudor"] = false;

      expect(profesor.toJson(), equals(json));
    });

    test('Construir Profesor a partir de map', () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["pid"] = "ax1914";
      json["rfc"] = "AIAA011206UL6";
      json["nombre"] = "Fernando";
      json["apellidoPaterno"] = "Rivera";
      json["apellidoMaterno"] = "Mendez";
      json["contrasegna"] = "123456";
      json["correo"] = "l19141205@queretaro.tecnm.mx";
      json["sancion"] = true;
      json["esDeudor"] = false;

      Profesor profesor1 = Profesor.fromJson(json);

      Profesor profesor2 = Profesor(
          pid: "ax1914",
          rfc: "AIAA011206UL6",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: false);

      Profesor profesor3 = Profesor(
          pid: "oj125",
          rfc: "AIRR011206UL6",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: false);

      expect(profesor1, equals(profesor2));
      expect(profesor1, isNot(equals(profesor3)));
    });
  });
}
