abstract class CatalogFilterOption {
  final String title;

  const CatalogFilterOption({
    required this.title,
  });

  String get displayName {
    return title;
  }
}
