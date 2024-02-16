class TalentModel {
  final String name;

  const TalentModel({
    required this.name,
  });

  factory TalentModel.fromMap(Map<String, dynamic> map) {
    return TalentModel(
      name: map["name"] as String,
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
    };
  }
}
