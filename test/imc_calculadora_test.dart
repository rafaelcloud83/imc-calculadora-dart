import 'package:imc_calculadora/model/pessoa.dart';
import 'package:imc_calculadora/service/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  group('Calcular IMC', () {
    var valoresParaTestar = {
      //OK
      {'nome': 'João', 'peso': 50, 'altura': 1.60}: 19.53,
      //OK
      {'nome': 'Maria', 'peso': 80, 'altura': 1.60}: 31.25,
      //Não OK
      {'nome': 'José', 'peso': 100, 'altura': 1.70}: 39.06,
    };

    valoresParaTestar.forEach((values, expected) {
      test('Entrada: $values Esperado: $expected', () {
        Pessoa pessoa = Pessoa(
            values['nome'].toString(),
            double.parse(values['peso'].toString()),
            double.parse(values['altura'].toString()));
        CalculadoraImc calculadora = CalculadoraImc();
        expect(calculadora.calcular(pessoa), expected);
      });
    });
  });
}
