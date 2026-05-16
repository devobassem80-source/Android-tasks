import 'dart:io';

void main() {
  int n;
  while (true) {
    stdout.write("Enter number of students: ");
    String? input = stdin.readLineSync();

    n = int.tryParse(input ?? "") ?? -1;
    if (n > 0) break;

    print("Invalid input, enter a valid number");
  }

  List<String> names = [];
  List<List<double>> grades = [];

  for (int i = 0; i < n; i++) {
    stdout.write("Enter student name: ");
    String name = stdin.readLineSync()!;

    int m;
    while (true) {
      stdout.write("Enter number of subjects: ");
      String? input = stdin.readLineSync();

      m = int.tryParse(input ?? "") ?? -1;
      if (m > 0) break;

      print("Invalid input");
    }

    List<double> g = [];
    for (int j = 0; j < m; j++) {
      while (true) {
        stdout.write("Enter grade: ");
        String? input = stdin.readLineSync();

        double? grade = double.tryParse(input ?? "");
        if (grade != null) {
          g.add(grade);
          break;
        }

        print("Invalid grade");
      }
    }

    names.add(name);
    grades.add(g);
  }

  while (true) {
    print("\n1. Show All Results");
    print("2. Search Student");
    print("3. Exit");

    stdout.write("Choose: ");
    int c = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

    if (c == 1) {
      for (int i = 0; i < names.length; i++) {
        double avg = grades[i].reduce((a, b) => a + b) / grades[i].length;

        String g = avg >= 90
            ? "A"
            : avg >= 80
            ? "B"
            : avg >= 70
            ? "C"
            : avg >= 60
            ? "D"
            : "F";

        print("${names[i].toUpperCase()} ${avg.toStringAsFixed(2)} $g");
      }
    } else if (c == 2) {
      stdout.write("Enter name: ");
      String s = stdin.readLineSync()!;

      int i = names.indexOf(s);

      if (i == -1) {
        print("Student not found");
      } else {
        double avg = grades[i].reduce((a, b) => a + b) / grades[i].length;

        print("Average: ${avg.round()}");
      }
    } else if (c == 3) {
      break;
    } else {
      print("Invalid choice");
    }
  }
}
