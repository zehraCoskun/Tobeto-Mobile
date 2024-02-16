class BadgeModel {
  final String name;
  final String imageUrl;

  const BadgeModel({
    required this.name,
    required this.imageUrl,
  });

  factory BadgeModel.fromMap(Map<String, dynamic> map) {
    return BadgeModel(
      name: map["name"] as String,
      imageUrl: map["image_url"] as String,
    );
  }

  Map<String, dynamic> toMap() {
    final classMap = _createClassMap();

    final Map<String, dynamic> map = {};

    for (MapEntry<String, dynamic> entry in classMap.entries) {
      if (entry.value != null) {
        map.addEntries([entry]);
      }
    }
    return map;
  }

  Map<String, dynamic> _createClassMap() {
    return {
      "name": name,
      "image_url": imageUrl,
    };
  }
}
