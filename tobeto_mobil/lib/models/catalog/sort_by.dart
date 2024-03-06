class SortBy {
  final CatalogField field;
  final bool ascending;

  const SortBy({
    required this.field,
    required this.ascending,
  });
}

enum CatalogField {
  title,
  totalDuration,
  startDate,
  language,
  category,
  education,
  level,
  trainer;

  String get field {
    switch (this) {
      case CatalogField.title:
        return "title";
      case CatalogField.totalDuration:
        return "total_duration";
      case CatalogField.startDate:
        return "start_date";
      case CatalogField.language:
        return "language";
      case CatalogField.category:
        return "category";
      case CatalogField.education:
        return "education";
      case CatalogField.level:
        return "level";
      case CatalogField.trainer:
        return "trainer";
    }
  }
}
