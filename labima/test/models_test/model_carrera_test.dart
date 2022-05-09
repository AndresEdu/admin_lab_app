import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
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
