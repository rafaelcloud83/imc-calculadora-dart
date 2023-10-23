import 'package:imc_calculadora/model/pessoa.dart';
import 'package:imc_calculadora/service/calculadora_imc.dart';
import 'package:imc_calculadora/utils/console_utils.dart';

void execute() {
  print('Bem vindo a calculadora de IMC');

  String nome = ConsoleUtils.lerString(mensagem: 'Digite seu nome:');
  double peso = ConsoleUtils.lerDouble(mensagem: 'Digite seu peso (kg):');
  double altura =
      ConsoleUtils.lerDouble(mensagem: 'Digite sua altura (metros):');
  Pessoa pessoa = Pessoa(nome, peso, altura);

  CalculadoraImc calculadora = CalculadoraImc();
  calculadora.resultado(pessoa);
}
