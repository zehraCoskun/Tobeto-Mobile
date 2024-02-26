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
}