enum EducationCategory {
  soft,
  mentor,
  mandatory;

  @override
  String toString() {
    switch (this) {
      case EducationCategory.soft:
        return "Soft Skill";
      case EducationCategory.mentor:
        return "Mentor Meetings";
      case EducationCategory.mandatory:
        return "Mandatory Skills";
    }
  }
}