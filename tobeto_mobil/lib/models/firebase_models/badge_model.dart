class BadgeModel {
  final String name;
  final String imageUrl;

  BadgeModel({
    required this.name,
    required this.imageUrl,
  });

  factory BadgeModel.fromMap(Map<String, dynamic>? map) {
    return BadgeModel(
      name: map?["name"] as String,
      imageUrl: map?["image_url"] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "image_url": imageUrl,
    };
  }
}
