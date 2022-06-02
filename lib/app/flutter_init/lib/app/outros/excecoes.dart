class PararError implements Exception{
  final String message;

  PararError(this.message);

  @override
  String toString() {
    return message;
  }
}


class NaoEncontrado implements Exception{
  final String message;

  NaoEncontrado(this.message);

  @override
  String toString() {
    return message;
  }
}

class ConstraintError implements Exception{
  final String message;

  ConstraintError(this.message);

  @override
  String toString() {
    return message;
  }
}

class UniqueError implements Exception{
  final String message;

  UniqueError(this.message);

  @override
  String toString() {
    return message;
  }
}