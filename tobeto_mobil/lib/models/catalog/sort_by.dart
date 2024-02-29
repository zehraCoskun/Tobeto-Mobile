class SortBy {
  final CatalogFields field;
  final bool ascending;

  const SortBy({
    required this.field,
    required this.ascending,
  });
}

enum CatalogFields {
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
      case CatalogFields.title:
        return "title";
      case CatalogFields.totalDuration:
        return "total_duration";
      case CatalogFields.startDate:
        return "start_date";
      case CatalogFields.language:
        return "language";
      case CatalogFields.category:
        return "category";
      case CatalogFields.education:
        return "education";
      case CatalogFields.level:
        return "level";
      case CatalogFields.trainer:
        return "trainer";
    }
  }
}
