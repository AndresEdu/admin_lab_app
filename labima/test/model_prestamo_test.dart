import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
  group("Prestamo", () {
    test("Construir un map a partir de Prestamo", () {
      Prestamo prestamo = Prestamo(
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

      Map<String, dynamic> json = <String, dynamic>{};
      json["prid"] = "123";
      json["encargadoId"] = "ax1914";
      json["solicitantesIds"] = ["ax1916", "ax1917", "ax1918"];
      json["tipoSolicitante"] = 1;
      json["maquinaId"] = "maquina1";
      json["prestaPiezas"] = [
        {"pieza1": 5},
        {"pieza2": 5},
        {"pieza3": 5}
      ];
      json["fecha"] = DateTime(2022, 04, 21, 9, 0, 0).toIso8601String();
      json["horaInicial"] = DateTime(2022, 04, 21, 10, 0, 0).toIso8601String();
      json["horaLimite"] = DateTime(2022, 04, 21, 14, 0, 0).toIso8601String();

      expect(prestamo.toJson(), equals(json));
    });

    test("Construir un Prestamo a partir de map", () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["prid"] = "123";
      json["encargadoId"] = "ax1914";
      json["solicitantesIds"] = ["ax1916", "ax1917", "ax1918"];
      json["tipoSolicitante"] = 1;
      json["maquinaId"] = "maquina1";
      json["prestaPiezas"] = [
        {"pieza1": 5},
        {"pieza2": 5},
        {"pieza3": 5}
      ];
      json["fecha"] = DateTime(2022, 04, 21, 9, 0, 0).toIso8601String();
      json["horaInicial"] = DateTime(2022, 04, 21, 10, 0, 0).toIso8601String();
      json["horaLimite"] = DateTime(2022, 04, 21, 14, 0, 0).toIso8601String();

      Prestamo prestamo = Prestamo.fromJson(json);

      Prestamo prestamo2 = Prestamo(
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
      expect(prestamo, equals(prestamo2));
    });
  });
}
