enum EducationCategoryItem {
  mandatory,
  soft,
  mentor;

  @override
  String toTitle() {
    switch (this) {
      case EducationCategoryItem.soft:
        return "Soft Skill Eğitimleri";
      case EducationCategoryItem.mentor:
        return "Mentör Buluşmaları";
      case EducationCategoryItem.mandatory:
        return "Geliştirici Eğitimleri";
    }
  }

  String toString() {
    switch (this) {
      case EducationCategoryItem.soft:
        return "soft";
      case EducationCategoryItem.mentor:
        return "mentor";
      case EducationCategoryItem.mandatory:
        return "mandatory";
    }
  }
}
