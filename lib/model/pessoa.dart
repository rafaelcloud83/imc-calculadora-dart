import 'package:imc_calculadora/exception/altura_exception.dart';
import 'package:imc_calculadora/exception/nome_exception.dart';
import 'package:imc_calculadora/exception/peso_exception.dart';

class Pessoa {
  String _nome = '';
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    setNome(nome);
    setPeso(peso);
    setAltura(altura);
  }

  void setNome(String nome) {
    if (nome.trim() == '') {
      throw NomeException;
    }
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    if (peso <= 0.0) {
      throw PesoException;
    }
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    if (altura <= 0.0) {
      throw AlturaException;
    }
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  @override
  String toString() {
    return {'Nome': _nome, 'Peso': _peso, 'Altura': _altura}.toString();
  }
}
