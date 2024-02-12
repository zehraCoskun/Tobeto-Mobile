class EducationModel {
  final String title; //listede gözüken başlığı
  final String thumbnail; // listedeki kapak resmi
  final String totalDuration; //eğitimin süresi
  final String releaseDate; //yayınlanma tarihi
  final String category; //bir dersin içindeki diğer eğitimleri bir arada toplamak için kullanacağız
  final String content; //buraya video linki gelecek sanırım
  final String startDate; //derslerin kullanılabileceği başlşangıç tarihi
  final String endDate;
  final String trainer; //eğitmen(burada birden fazla da olabiliyor sitesinde ama bana kalırsa gerek yok)

  EducationModel({
    required this.title,
    required this.thumbnail,
    required this.totalDuration,
    required this.releaseDate,
    required this.category,
    required this.content,
    required this.startDate,
    required this.endDate,
    required this.trainer,
  });

  factory EducationModel.fromMap(Map<String, dynamic> map) {
    return EducationModel(
      title: map["title"] as String,
      thumbnail: map["thumbnail"] as String,
      totalDuration: map["totalDuration"] as String,
      releaseDate: map["releaseDate"] as String,
      category: map["category"] as String,
      content: map["content"] as String,
      startDate: map["startDate"] as String,
      endDate: map["endDate"] as String,
      trainer: map["trainer"] as String,
    );
  }
}
