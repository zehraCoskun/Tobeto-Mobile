class VirtualClassSessionModel {
  final String id;
  final String virtualClassId;
  final String startDate;
  final String endDate;
  final String language;
  final String category;
  final String subType;
  final bool isCompleted;
  final List<String> educators;

  VirtualClassSessionModel({
    required this.id,
    required this.virtualClassId,
    required this.startDate,
    required this.endDate,
    required this.language,
    required this.category,
    required this.subType,
    required this.isCompleted,
    required this.educators,
  });
}
