class EducationContentModel {
  final String title;
  final String url;

  const EducationContentModel({
    required this.title,
    required this.url,
  });

  factory EducationContentModel.fromMap(Map<String, dynamic> map) {
    return EducationContentModel(
      title: map["title"] as String,
      url: map["url"] as String,
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
      "title": title,
      "url": url,
    };
  }
}
