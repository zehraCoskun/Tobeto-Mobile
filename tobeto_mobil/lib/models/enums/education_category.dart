enum EducationCategory {
  mandatory,
  soft,
  mentor;

  @override
  String toString() {
    switch (this) {
      case EducationCategory.soft:
        return "Soft Skill Eğitimleri";
      case EducationCategory.mentor:
        return "Mentör Buluşmaları";
      case EducationCategory.mandatory:
        return "Geliştirici Eğitimleri";
    }
  }
}