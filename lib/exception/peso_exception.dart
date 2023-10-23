class PesoException implements Exception {
  String error() => 'Peso inválido';

  @override
  String toString() {
    return 'PesoException: ${error()}';
  }
}
