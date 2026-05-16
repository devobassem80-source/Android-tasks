class Person {
  String name;
  int _age;
  static String universityName = "Asuet";

  Person(this.name, this._age);

  int get age => _age;
  set age(int value) => _age = value;
}

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void showInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}

abstract class Skills {
  void goodskill();
  void badskill();
}

class Developer extends Employee implements Skills {
  Developer(String name, int age, double salary) : super(name, age, salary);

  void goodskill() {
    print("good skill: UI/UX developer");
  }

  void badskill() {
    print("bad skill: communication");
  }
}

void main() {
  var d = Developer("Mohamed Hazem", 21, 12000);

  print("University: ${Person.universityName}");
  d.showInfo();
  d.goodskill();
  d.badskill();
}
