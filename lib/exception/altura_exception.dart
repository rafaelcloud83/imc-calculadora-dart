class AlturaException implements Exception {
  String error() => 'Altura inválida';

  @override
  String toString() {
    return 'AlturaException: ${error()}';
  }
}
