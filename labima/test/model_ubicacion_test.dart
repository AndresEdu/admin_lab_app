import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
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

      Ubicacion ubicacion1 = Ubicacion.fromJson(json);

      Ubicacion ubicacion2 = Ubicacion(
        ubid: "maq3",
        nombre: "maquinado3",
        seccion: "4",
      );

      Ubicacion ubicacion3 = Ubicacion(
        ubid: "maq3",
        nombre: "maquinado3",
        seccion: "3",
      );

      expect(ubicacion1, equals(ubicacion2));
      expect(ubicacion1, isNot(equals(ubicacion3)));
    });
  });
}
