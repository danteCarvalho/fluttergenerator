class Coluna {
  final String? tipo;
  final bool nullable;
  final bool unique;
  final bool primaryKey;
  final String? defaultValue;
  final bool selectable;

  const Coluna({
    this.tipo,
    this.nullable = true,
    this.unique = false,
    this.primaryKey = false,
    this.defaultValue,
    this.selectable = true,
  });
}
