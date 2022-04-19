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

  group('Encargado', () {
    test('Generar map a partir de Encargado', () {
      Encargado encargado = Encargado(
        encid: "ax1914",
        noControl: "19141205",
        nombre: "Fernando",
        apellidoPaterno: "Rivera",
        apellidoMaterno: "Mendez",
        carrera: "ISC",
        contrasegna: "123456",
        correo: "l19141205@queretaro.tecnm.mx",
        hrInicio: DateTime.now(),
        hrFinal: DateTime.utc(1989, DateTime.november, 9),
        hrTotal: 4,
      );

      Map<String, dynamic> json = <String, dynamic>{};
      json["encid"] = "ax1914";
      json["noControl"] = "19141205";
      json["nombre"] = "Fernando";
      json["apellidoPaterno"] = "Rivera";
      json["apellidoMaterno"] = "Mendez";
      json["carrera"] = "ISC";
      json["contrasegna"] = "123456";
      json["correo"] = "l19141205@queretaro.tecnm.mx";
      json["hrInicio"] = DateTime.now();
      json["hrFinal"] = DateTime.utc(1989, DateTime.november, 9);
      json["hrTotal"] = 4;

      expect(encargado.toJson(), equals(json));
    });

    test('Construir Encargado a partir de map', () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["encid"] = "ax1914";
      json["noControl"] = "19141205";
      json["nombre"] = "Fernando";
      json["apellidoPaterno"] = "Rivera";
      json["apellidoMaterno"] = "Mendez";
      json["carrera"] = "ISC";
      json["contrasegna"] = "123456";
      json["correo"] = "l19141205@queretaro.tecnm.mx";
      json["hrInicio"] = DateTime.now();
      json["hrFinal"] = DateTime.utc(1989, DateTime.november, 9);
      json["hrTotal"] = 4;

      Encargado encargado1 = Encargado.fromJson(json);

      Encargado encargado2 = Encargado(
        encid: "ax1914",
        noControl: "19141205",
        nombre: "Fernando",
        apellidoPaterno: "Rivera",
        apellidoMaterno: "Mendez",
        carrera: "ISC",
        contrasegna: "123456",
        correo: "l19141205@queretaro.tecnm.mx",
        hrInicio: DateTime.now(),
        hrFinal: DateTime.utc(1989, DateTime.november, 9),
        hrTotal: 4,
      );

      Encargado encargado3 = Encargado(
        encid: "ax1928", // ID diferente
        noControl: "19141205",
        nombre: "Fernando",
        apellidoPaterno: "Rivera",
        apellidoMaterno: "Mendez",
        carrera: "ISC",
        contrasegna: "123456",
        correo: "l19141205@queretaro.tecnm.mx",
        hrInicio: DateTime.utc(1989, DateTime.november, 9),
        hrFinal: DateTime.now(),
        hrTotal: 6,
      ); //horas diferentes

      expect(encargado1, equals(encargado2));
      expect(encargado1, isNot(equals(encargado3)));
    });
  });

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
  
  group('Ubicacion', () {
    test('Generar map a partir de Ubicacion', () {
      Ubicacion ubicacion = Ubicacion(
          ubid: "maq3",
          nombre: "maquinado3",
          seccion: "4",
          );

      Map<String, dynamic> json = <String, dynamic>{};
      json["ubid"] = "maq3";
      json["nombre"] = "maquinado3";
      json["seccion"] = "4";

      expect(ubicacion.toJson(), equals(json));
    });

    test('Construir Ubicacion a partir de map', () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["ubid"] = "maq3";
      json["nombre"] = "maquinado3";
      json["seccion"] = "4";

      Ubicacion profesor1 = Ubicacion.fromJson(json);

      Ubicacion profesor2 = Ubicacion(
          ubid: "maq3",
          nombre: "maquinado3",
          seccion: "4",
          );

      Ubicacion profesor3 = Ubicacion(
          ubid: "maq3",
          nombre: "maquinado3",
          seccion: "3",
          );

      expect(profesor1, equals(profesor2));
      expect(profesor1, isNot(equals(profesor3)));
    });
  });
}