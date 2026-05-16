import 'dart:math';

void main() {
  int D = Random().nextInt(101);
  print("D: $D");

  String grade;

  if (D >= 95)

    grade = "+A";
  else if (D >= 90)
    grade = "-A";
  else if (D >= 85)
    grade = "+B";
  else if (D >= 80)
    grade = "-B";
  else if (D >= 75)
    grade = "+C";
  else if (D >= 70)
    grade = "-C";
  else if (D >= 65)
    grade = "+D";
  else if (D >= 60)
    grade = "-D";
  else
    grade = "F";

  print("Grade: $grade");
}
