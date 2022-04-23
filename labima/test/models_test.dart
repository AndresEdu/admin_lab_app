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
          sancion: true,
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

  group("Carrera", () {
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
