import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models.dart';

void main() {
  group('Alumno', () {
    test('Generar map a partir de Alumno', () {
      Alumno alumno = Alumno(
          aid: "ax1914",
          noControl: "19141205",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          carrera: "ISC",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
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
      json["sancion"] = true;
      json["esDeudor"] = false;

      expect(alumno.toJson(), equals(json));
    });

    test('Construir Alumno a partir de map', () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["aid"] = "ax1914";
      json["noControl"] = "19141205";
      json["nombre"] = "Fernando";
      json["apellidoPaterno"] = "Rivera";
      json["apellidoMaterno"] = "Mendez";
      json["carrera"] = "ISC";
      json["contrasegna"] = "123456";
      json["correo"] = "l19141205@queretaro.tecnm.mx";
      json["sancion"] = true;
      json["esDeudor"] = false;

      Alumno alumno1 = Alumno.fromJson(json);

      Alumno alumno2 = Alumno(
          aid: "ax1914",
          noControl: "19141205",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          carrera: "ISC",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: false,
          esDeudor: false);

      Alumno alumno3 = Alumno(
          aid: "ax1928", // ID diferente
          noControl: "19141205",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          carrera: "ISC",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: false,
          esDeudor: true); // esDeudor diferente

      expect(alumno1, equals(alumno2));
      expect(alumno1, isNot(equals(alumno3)));
    });
  });

  group('Carrera', () {
    test('Convertir carrera en json', () {
      Carrera c1 = Carrera(cid: "ax98765d7", nombre: "ISC");

      Map<String, dynamic> json = <String, dynamic>{
        "cid": "ax98765d7",
        "nombre": "ISC"
      };
      expect(c1.toJson(), equals(json));
    });

    test('Construir carrera a partir de map', () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["cid"] = "ax98765d7";
      json["nombre"] = "ISC";

      Carrera c1 = Carrera.fromJson(json);

      Carrera c2 = Carrera(cid: "ax98765d7", nombre: "ISC");
      Carrera c3 = Carrera(cid: "ad32158a7", nombre: "IMA");

      expect(c1, equals(c2));
      expect(c1, isNot(equals(c3)));
    });
  });
}
