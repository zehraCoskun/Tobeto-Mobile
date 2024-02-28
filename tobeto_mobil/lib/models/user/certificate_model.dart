class CertificateModel {
  final String name;
  final String fileUrl;

  const CertificateModel({
    required this.name,
    required this.fileUrl,
  });

  factory CertificateModel.fromMap(Map<String, dynamic> map) {
    return CertificateModel(
      name: map["name"] as String,
      fileUrl: map["file_url"] as String,
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
      "file_url": fileUrl,
    };
  }
}
