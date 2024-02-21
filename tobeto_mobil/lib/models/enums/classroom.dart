enum Classroom {
  all,
  mobile,
  net,
  java,
  analyst,
  cybersecurity,
  tester,
  network,
  esales,
  datascience,
  gamedeveloper,
  devops;

  static Classroom? getClassroom(String? name) {
    if (name == null) return null;

    for (var item in Classroom.values) {
      if (item.name == name) {
        return item;
      }
    }
    return null;
  }
}
