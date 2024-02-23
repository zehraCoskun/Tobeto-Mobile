enum CatalogOrderItem {
  title,
  totalDuration;

  @override
  String toString() {
    switch (this) {
      case CatalogOrderItem.title:
        return "Eğitim İsmi";
      case CatalogOrderItem.totalDuration:
        return "Eğitim Süresi";
    }
  }

  static List<String> getAllOrderItems() {
    return CatalogOrderItem.values.map((item) => item.toString()).toList();
  }
}
