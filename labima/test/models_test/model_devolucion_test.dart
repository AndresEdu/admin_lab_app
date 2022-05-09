import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
  group("Devolucion", () {
    test("Construir un map a partir de una devolucion", () {
      Prestamo prestamo1 = Prestamo(
        prid: "123",
        encargadoId: "ax1914",
        solicitantesIds: ["ax1916", "ax1917", "ax1918"],
        tipoSolicitante: 1,
        maquinaId: "maquina1",
        prestaPiezas: [
          {"pieza1": 5},
          {"pieza2": 5},
          {"pieza3": 5}
        ], // String idPieza, Int: cantidad
        fecha: DateTime(2022, 04, 21, 9, 0, 0),
        horaInicial: DateTime(2022, 04, 21, 10, 0, 0),
        horaLimite: DateTime(2022, 04, 21, 14, 0, 0),
      );
      Map<String, dynamic> prestamo = prestamo1.toJson();
      prestamo["prid"] = "123";
      prestamo["encargadoId"] = "ax1914";
      prestamo["solicitantesIds"] = ["ax1916", "ax1917", "ax1918"];
      prestamo["tipoSolicitante"] = 1;
      prestamo["maquinaId"] = "maquina1";
      prestamo["prestaPiezas"] = [
        {"pieza1": 5},
        {"pieza2": 5},
        {"pieza3": 5}
      ];
      prestamo["fecha"] = DateTime(2022, 04, 21, 9, 0, 0).toIso8601String();
      prestamo["horaInicial"] =
          DateTime(2022, 04, 21, 10, 0, 0).toIso8601String();
      prestamo["horaLimite"] =
          DateTime(2022, 04, 21, 14, 0, 0).toIso8601String();

      Devolucion devolucion = Devolucion(
        dvid: "devolucion1",
        encargadoId: "ax1914",
        prestamo: prestamo1,
        devuelvePiezas: [
          {"pieza1": 5},
          {"pieza2": 5},
          {"pieza3": 5}
        ], // String idPieza, Int: cantidad
        fecha: DateTime(2022, 04, 21, 9, 0, 0),
        completo: true,
      );

      Map<String, dynamic> json = <String, dynamic>{};
      json["dvid"] = "devolucion1";
      json["encargadoId"] = "ax1914";
      json["prestamo"] = prestamo;
      json["devuelvePiezas"] = [
        {"pieza1": 5},
        {"pieza2": 5},
        {"pieza3": 5}
      ];
      json["fecha"] = DateTime(2022, 04, 21, 9, 0, 0).toIso8601String();
      json["completo"] = true;

      expect(devolucion.toJson(), equals(json));
    });

    test("Construir una devolucion a partir de un map", () {
      Prestamo prestamo1 = Prestamo(
        prid: "123",
        encargadoId: "ax1914",
        solicitantesIds: ["ax1916", "ax1917", "ax1918"],
        tipoSolicitante: 1,
        maquinaId: "maquina1",
        prestaPiezas: [
          {"pieza1": 5},
          {"pieza2": 5},
          {"pieza3": 5}
        ], // String idPieza, Int: cantidad
        fecha: DateTime(2022, 04, 21, 9, 0, 0),
        horaInicial: DateTime(2022, 04, 21, 10, 0, 0),
        horaLimite: DateTime(2022, 04, 21, 14, 0, 0),
      );
      Map<String, dynamic> prestamo = prestamo1.toJson();
      prestamo["prid"] = "123";
      prestamo["encargadoId"] = "ax1914";
      prestamo["solicitantesIds"] = ["ax1916", "ax1917", "ax1918"];
      prestamo["tipoSolicitante"] = 1;
      prestamo["maquinaId"] = "maquina1";
      prestamo["prestaPiezas"] = [
        {"pieza1": 5},
        {"pieza2": 5},
        {"pieza3": 5}
      ];
      prestamo["fecha"] = DateTime(2022, 04, 21, 9, 0, 0).toIso8601String();
      prestamo["horaInicial"] =
          DateTime(2022, 04, 21, 10, 0, 0).toIso8601String();
      prestamo["horaLimite"] =
          DateTime(2022, 04, 21, 14, 0, 0).toIso8601String();

      Map<String, dynamic> json = <String, dynamic>{};
      json["dvid"] = "devolucion1";
      json["encargadoId"] = "ax1914";
      json["prestamo"] = prestamo;
      json["devuelvePiezas"] = [
        {"pieza1": 5},
        {"pieza2": 5},
        {"pieza3": 5}
      ];
      json["fecha"] = DateTime(2022, 04, 21, 9, 0, 0).toIso8601String();
      json["completo"] = true;

      Devolucion devolucion = Devolucion.fromJson(json);

      Devolucion devolucion1 = Devolucion(
        dvid: "devolucion1",
        encargadoId: "ax1914",
        prestamo: prestamo1,
        devuelvePiezas: [
          {"pieza1": 5},
          {"pieza2": 5},
          {"pieza3": 5}
        ], // String idPieza, Int: cantidad
        fecha: DateTime(2022, 04, 21, 9, 0, 0),
        completo: true,
      );

      expect(devolucion, equals(devolucion1));
    });
  });
}
