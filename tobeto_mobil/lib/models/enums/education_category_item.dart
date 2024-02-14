enum EducationCategoryItem {
  mandatory,
  soft,
  mentor;

  @override
  String toString() {
    switch (this) {
      case EducationCategoryItem.soft:
        return "Soft Skill Eğitimleri";
      case EducationCategoryItem.mentor:
        return "Mentör Buluşmaları";
      case EducationCategoryItem.mandatory:
        return "Geliştirici Eğitimleri";
    }
  }
}