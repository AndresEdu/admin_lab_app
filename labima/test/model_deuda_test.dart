import 'package:flutter_test/flutter_test.dart';
import 'package:labima/models/models.dart';

void main() {
  group("Deuda", () {
    test("Construir un map a partir de una Deuda", () {
      Deuda deuda = Deuda(
        ddid: "123",
        debePiezas: [
          {"pieza1": 5},
          {"pieza2": 5},
          {"pieza3": 5}
        ],
      );

      Map<String, dynamic> json = <String, dynamic>{};
      json["ddid"] = "123";
      json["debePiezas"] = [
        {"pieza1": 5},
        {"pieza2": 5},
        {"pieza3": 5}
      ];

      expect(deuda.toJson(), equals(json));
    });

    test("Construir una Deuda a partir de un map", () {
      Map<String, dynamic> json = <String, dynamic>{};
      json["ddid"] = "123";
      json["debePiezas"] = [
        {"pieza1": 5},
        {"pieza2": 5},
        {"pieza3": 5}
      ];

      Deuda deuda = Deuda.fromJson(json);

      Deuda deuda1 = Deuda(
        ddid: "123",
        debePiezas: [
          {"pieza1": 5},
          {"pieza2": 5},
          {"pieza3": 5}
        ],
      );

      expect(deuda, equals(deuda1));
    });
  });
}
