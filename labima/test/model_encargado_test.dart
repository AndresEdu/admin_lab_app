import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
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
        hrInicio: DateTime(2022, 04, 21, 10, 0, 0),
        hrFinal: DateTime(2022, 04, 21, 14, 0, 0),
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
      json["hrInicio"] = DateTime(2022, 04, 21, 10, 0, 0).toIso8601String();
      json["hrFinal"] = DateTime(2022, 04, 21, 14, 0, 0).toIso8601String();
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
      json["hrInicio"] = DateTime(2022, 04, 21, 10, 0, 0).toIso8601String();
      json["hrFinal"] = DateTime(2022, 04, 21, 14, 0, 0).toIso8601String();
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
        hrInicio: DateTime(2022, 04, 21, 10, 0, 0),
        hrFinal: DateTime(2022, 04, 21, 14, 0, 0),
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
        hrInicio: DateTime(2022, 04, 21, 10, 0, 0),
        hrFinal: DateTime(2022, 04, 21, 16, 0, 0),
        hrTotal: 6,
      ); //horas diferentes

      expect(encargado1, equals(encargado2));
      expect(encargado1, isNot(equals(encargado3)));
    });
  });
}
