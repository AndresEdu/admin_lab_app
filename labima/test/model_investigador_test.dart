import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
  group("Investigador", () {
    test('Generar map a partir de Investigador', () {
      Investigador investigador = Investigador(
          inid: "ax1914",
          noIdentificacion: "19141205",
          nombre: "Fernando",
          apellido: "Rivera",
          tecnologico: "Tecnologico de Queretaro",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: false);

      Map<String, dynamic> json = <String, dynamic>{};
      json["inid"] = "ax1914";
      json["noIdentificacion"] = "19141205";
      json["nombre"] = "Fernando";
      json["apellido"] = "Rivera";
      json["tecnologico"] = "Tecnologico de Queretaro";
      json["contrasegna"] = "123456";
      json["correo"] = "l19141205@queretaro.tecnm.mx";
      json["sancion"] = true;
      json["esDeudor"] = false;

      expect(investigador.toJson(), equals(json));
    });

    test('Construir Investigador a partir de map', () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["inid"] = "ax1914";
      json["noIdentificacion"] = "19141205";
      json["nombre"] = "Fernando";
      json["apellido"] = "Rivera";
      json["tecnologico"] = "Tecnologico de Queretaro";
      json["contrasegna"] = "123456";
      json["correo"] = "l19141205@queretaro.tecnm.mx";
      json["sancion"] = true;
      json["esDeudor"] = false;

      Investigador investigador1 = Investigador.fromJson(json);

      Investigador investigador2 = Investigador(
          inid: "ax1914",
          noIdentificacion: "19141205",
          nombre: "Fernando",
          apellido: "Rivera",
          tecnologico: "Tecnologico de Queretaro",
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: false);

      Investigador investigador3 = Investigador(
          inid: "ax1924", //ID diferente
          noIdentificacion: "19141205",
          nombre: "Fernando",
          apellido: "Rivera",
          tecnologico: "Tecnologico de Chiapas", // tecnologico diferente
          contrasegna: "123456",
          correo: "l19141205@queretaro.tecnm.mx",
          sancion: true,
          esDeudor: false);

      expect(investigador1, equals(investigador2));
      expect(investigador1, isNot(equals(investigador3)));
    });
  });
}
