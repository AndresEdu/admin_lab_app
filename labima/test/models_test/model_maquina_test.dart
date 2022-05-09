import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
  group('Maquina', () {
    test('Generar map a partir de Maquina', () {
      Pieza p1 = Pieza(
        pid: "123456",
        nombre: "pieza1",
        cantTotal: 5,
        cantDisponible: 2,
        ubicacion: "sec3",
        maquina: "sdsad",
        fotoUrl: "blablap1.com",
      );

      Pieza p2 = Pieza(
        pid: "ab123",
        nombre: "tuerca",
        cantTotal: 5,
        cantDisponible: 3,
        ubicacion: "sec5",
        maquina: "sdsad",
        fotoUrl: "foto1.com",
      );

      Pieza p3 = Pieza(
        pid: "perico1",
        nombre: "1",
        cantTotal: 5,
        cantDisponible: 2,
        ubicacion: "Almacen principal",
        maquina: "Frisadora",
        fotoUrl: "foto3.com",
      );

      Maquina maquina = Maquina(
        mid: "sdsad",
        nombre: "maquina1",
        horasPrestada: 3,
        ultimoMantto: "2022-07-20",
        disponibilidad: true,
        piezas: [p1, p2, p3],
        fotoUrl: "blabla.com",
      );

      Map<String, dynamic> json = <String, dynamic>{};
      json["mid"] = "sdsad";
      json["nombre"] = "maquina1";
      json["horasPrestada"] = 3;
      json["ultimoMantto"] = "2022-07-20";
      json["disponibilidad"] = true;
      json["piezas"] = [
        {
          "pid": "123456",
          "nombre": "pieza1",
          "cantTotal": 5,
          "cantDisponible": 2,
          "ubicacion": "sec3",
          "maquina": "sdsad",
          "fotoUrl": "blablap1.com",
        },
        {
          "pid": "ab123",
          "nombre": "tuerca",
          "cantTotal": 5,
          "cantDisponible": 3,
          "ubicacion": "sec5",
          "maquina": "sdsad",
          "fotoUrl": "foto1.com",
        },
        {
          "pid": "perico1",
          "nombre": "1",
          "cantTotal": 5,
          "cantDisponible": 2,
          "ubicacion": "Almacen principal",
          "maquina": "Frisadora",
          "fotoUrl": "foto3.com",
        }
      ];
      json["fotoUrl"] = "blabla.com";

      expect(maquina.toJson(), equals(json));
    });

    test('Construir Maquina a partir de map', () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["mid"] = "sdsad";
      json["nombre"] = "maquina1";
      json["horasPrestada"] = 3;
      json["ultimoMantto"] = "2022-07-20";
      json["disponibilidad"] = true;
      json["piezas"] = [
        {
          "pid": "123456",
          "nombre": "pieza1",
          "cantTotal": 5,
          "cantDisponible": 2,
          "ubicacion": "sec3",
          "maquina": "sdsad",
          "fotoUrl": "blablap1.com",
        },
        {
          "pid": "ab123",
          "nombre": "tuerca",
          "cantTotal": 5,
          "cantDisponible": 3,
          "ubicacion": "sec5",
          "maquina": "sdsad",
          "fotoUrl": "foto1.com",
        },
        {
          "pid": "perico1",
          "nombre": "1",
          "cantTotal": 5,
          "cantDisponible": 2,
          "ubicacion": "Almacen principal",
          "maquina": "Frisadora",
          "fotoUrl": "foto3.com",
        }
      ];
      json["fotoUrl"] = "blabla.com";

      Maquina maquina1 = Maquina.fromJson(json);

      Pieza p1 = Pieza(
        pid: "123456",
        nombre: "pieza1",
        cantTotal: 5,
        cantDisponible: 2,
        ubicacion: "sec3",
        maquina: "sdsad",
        fotoUrl: "blablap1.com",
      );

      Pieza p2 = Pieza(
        pid: "ab123",
        nombre: "tuerca",
        cantTotal: 5,
        cantDisponible: 3,
        ubicacion: "sec5",
        maquina: "sdsad",
        fotoUrl: "foto1.com",
      );

      Pieza p3 = Pieza(
        pid: "perico1",
        nombre: "1",
        cantTotal: 5,
        cantDisponible: 2,
        ubicacion: "Almacen principal",
        maquina: "Frisadora",
        fotoUrl: "foto3.com",
      );

      Pieza p4 = Pieza(
        pid: "123456",
        nombre: "pieza1",
        cantTotal: 5,
        cantDisponible: 2,
        ubicacion: "sec3",
        maquina: "sdsad",
        fotoUrl: "blablap1.com",
      );

      Maquina maquina2 = Maquina(
        mid: "sdsad",
        nombre: "maquina1",
        horasPrestada: 3,
        ultimoMantto: "2022-07-20",
        disponibilidad: true,
        piezas: [p1, p2, p3],
        fotoUrl: "blabla.com",
      );

      Maquina maquina3 = Maquina(
        mid: "sdsad",
        nombre: "maquina1",
        horasPrestada: 3,
        ultimoMantto: "2022-07-20",
        disponibilidad: true,
        piezas: [p1, p2, p4], // Pieza diferente
        fotoUrl: "blabla.com",
      );

      expect(maquina1, equals(maquina2));
      expect(maquina1, isNot(equals(maquina3)));
    });
  });
}
