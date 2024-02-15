enum EducationCategoryItem {
  mandatory,
  soft,
  mentor;

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

  @override
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
