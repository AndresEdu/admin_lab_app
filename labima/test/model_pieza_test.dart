import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
  group("Pieza", () {
    test("Construir map a partir de pieza", () {
      Pieza pieza = Pieza(
        pid: "123456",
        nombre: "pieza1",
        cantTotal: 5,
        cantDisponible: 2,
        ubicacion: "sec3",
        maquina: "sdsad",
        fotoUrl: "blablap1.com",
      );

      Map<String, dynamic> json = <String, dynamic>{
        "pid": "123456",
        "nombre": "pieza1",
        "cantTotal": 5,
        "cantDisponible": 2,
        "ubicacion": "sec3",
        "maquina": "sdsad",
        "fotoUrl": "blablap1.com",
      };

      expect(pieza.toJson(), equals(json));
    });

    test("Construir pieza a partir de map", () {
      Map<String, dynamic> json = <String, dynamic>{
        "pid": "123456",
        "nombre": "pieza1",
        "cantTotal": 5,
        "cantDisponible": 2,
        "ubicacion": "sec3",
        "maquina": "sdsad",
        "fotoUrl": "blablap1.com",
      };

      Pieza p1 = Pieza.fromJson(json);

      Pieza p2 = Pieza(
        pid: "123456",
        nombre: "pieza1",
        cantTotal: 5,
        cantDisponible: 2,
        ubicacion: "sec3",
        maquina: "sdsad",
        fotoUrl: "blablap1.com",
      );

      Pieza p3 = Pieza(
        pid: "123456",
        nombre: "pieza1",
        cantTotal: 7,
        cantDisponible: 2,
        ubicacion: "sec3",
        maquina: "sdsad",
        fotoUrl: "blablap1.com",
      );

      expect(p1, equals(p2));
      expect(p1, isNot(equals(p3)));
    });
  });
}
