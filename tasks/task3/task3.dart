void main() {
  Set<String> students = {};

  void addStudent(String name) {
    students.add(name);
  }

  void printStudents(List<String> list, int i) {
    if (i == list.length) return;
    print(list[i]);
    printStudents(list, i + 1);
  }

  addStudent("David");
  addStudent("Bassem");

  students.forEach((e) => print(e));

  printStudents(students.toList(), 0);

  Set<String> newStudents = {"David", "Bassem"};
  students = {...students, ...newStudents};

  Map<String, Map<String, double>> courses = {};

  void addCourse(String name, String course, [double grade = 0]) {
    courses.putIfAbsent(name, () => {});
    courses[name]![course] = grade;
  }

  double averageGrade(String name) {
    var g = courses[name]!.values;
    return g.reduce((a, b) => a + b) / g.length;
  }

  addCourse("David", "engilsh", 85);
  addCourse("Bassem", "math", 95);

  print(averageGrade("David"));
}
