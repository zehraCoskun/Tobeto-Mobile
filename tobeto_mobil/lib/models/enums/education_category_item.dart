enum EducationCategoryItem {
  mandatory,
  soft,
  mentor;

  @override
  String toString() {
    switch (this) {
      case EducationCategoryItem.soft:
        return "Soft Skill";
      case EducationCategoryItem.mentor:
        return "Mentor Meetings";
      case EducationCategoryItem.mandatory:
        return "Mandatory Skills";
    }
  }
}