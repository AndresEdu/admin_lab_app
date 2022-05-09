import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
  group("Deudores", () {
    test("Construir un map a partir de un deudor", () {
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
          esDeudor: true);

      Alumno alumno2 = Alumno(
          aid: "ax1915",
          noControl: "19141205",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          carrera: "ISC",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: true);

      Profesor profesor = Profesor(
          pid: "ax1914",
          rfc: "AIAA011206UL6",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: true);

      Profesor profesor2 = Profesor(
          pid: "ax1915",
          rfc: "AIAA011206UL6",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: true);

      Deudores deudores = Deudores(
          did: "deudores1",
          alumnos: [alumno, alumno2],
          profesores: [profesor, profesor2],
          investigadores: []);

      Map<String, dynamic> json = <String, dynamic>{};
      json["did"] = "deudores1";
      json["alumnos"] = [
        {
          "aid": "ax1914",
          "noControl": "19141205",
          "nombre": "Fernando",
          "apellidoPaterno": "Rivera",
          "apellidoMaterno": "Mendez",
          "carrera": "ISC",
          "contrasegna": "123456",
          "correo": "l19141205@queretaro.tecnm.mx",
          "sancion": true,
          "esDeudor": true
        },
        {
          "aid": "ax1915",
          "noControl": "19141205",
          "nombre": "Fernando",
          "apellidoPaterno": "Rivera",
          "apellidoMaterno": "Mendez",
          "carrera": "ISC",
          "contrasegna": "123456",
          "correo": "l19141205@queretaro.tecnm.mx",
          "sancion": true,
          "esDeudor": true
        }
      ];
      json["profesores"] = [
        {
          "pid": "ax1914",
          "rfc": "AIAA011206UL6",
          "nombre": "Fernando",
          "apellidoPaterno": "Rivera",
          "apellidoMaterno": "Mendez",
          "contrasegna": "123456",
          "correo": "l19141205@queretaro.tecnm.mx",
          "sancion": true,
          "esDeudor": true
        },
        {
          "pid": "ax1915",
          "rfc": "AIAA011206UL6",
          "nombre": "Fernando",
          "apellidoPaterno": "Rivera",
          "apellidoMaterno": "Mendez",
          "contrasegna": "123456",
          "correo": "l19141205@queretaro.tecnm.mx",
          "sancion": true,
          "esDeudor": true
        }
      ];
      json["investigadores"] = [];

      expect(deudores.toJson(), equals(json));
    });
    test("Construir deudores a partir de un map", () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["did"] = "deudores1";
      json["alumnos"] = [
        {
          "aid": "ax1914",
          "noControl": "19141205",
          "nombre": "Fernando",
          "apellidoPaterno": "Rivera",
          "apellidoMaterno": "Mendez",
          "carrera": "ISC",
          "contrasegna": "123456",
          "correo": "l19141205@queretaro.tecnm.mx",
          "sancion": true,
          "esDeudor": true
        },
        {
          "aid": "ax1915",
          "noControl": "19141205",
          "nombre": "Fernando",
          "apellidoPaterno": "Rivera",
          "apellidoMaterno": "Mendez",
          "carrera": "ISC",
          "contrasegna": "123456",
          "correo": "l19141205@queretaro.tecnm.mx",
          "sancion": true,
          "esDeudor": true
        }
      ];
      json["profesores"] = [
        {
          "pid": "ax1914",
          "rfc": "AIAA011206UL6",
          "nombre": "Fernando",
          "apellidoPaterno": "Rivera",
          "apellidoMaterno": "Mendez",
          "contrasegna": "123456",
          "correo": "l19141205@queretaro.tecnm.mx",
          "sancion": true,
          "esDeudor": true
        },
        {
          "pid": "ax1915",
          "rfc": "AIAA011206UL6",
          "nombre": "Fernando",
          "apellidoPaterno": "Rivera",
          "apellidoMaterno": "Mendez",
          "contrasegna": "123456",
          "correo": "l19141205@queretaro.tecnm.mx",
          "sancion": true,
          "esDeudor": true
        }
      ];
      json["investigadores"] = [];

      Deudores deudores = Deudores.fromJson(json);

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
          esDeudor: true);

      Alumno alumno2 = Alumno(
          aid: "ax1915",
          noControl: "19141205",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          carrera: "ISC",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: true);

      Profesor profesor = Profesor(
          pid: "ax1914",
          rfc: "AIAA011206UL6",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: true);

      Profesor profesor2 = Profesor(
          pid: "ax1915",
          rfc: "AIAA011206UL6",
          nombre: "Fernando",
          apellidoPaterno: "Rivera",
          apellidoMaterno: "Mendez",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: true);

      Deudores deudores2 = Deudores(
          did: "deudores1",
          alumnos: [alumno, alumno2],
          profesores: [profesor, profesor2],
          investigadores: []);

      expect(deudores, equals(deudores2));
    });
  });
}
