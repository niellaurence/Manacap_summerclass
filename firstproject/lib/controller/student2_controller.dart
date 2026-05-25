import 'package:sample/model/student2_model.dart';

class Student2Controller {
  final Student2Model student2model = Student2Model();

  //setters

  void setName(String name) {
    student2model.name = name;
  }

  //setters for subject scores grades
  void setSubjects({
    required String english,
    required String filipino,
    required String math,
    required String science,
    required String pe,
  }) {
    student2model.english = double.tryParse(english) ?? 0;
    student2model.filipino = double.tryParse(filipino) ?? 0;
    student2model.math = double.tryParse(math) ?? 0;
    student2model.science = double.tryParse(science) ?? 0;
    student2model.pe = double.tryParse(pe) ?? 0;
  }

  //function to calculate average score and grade
  void getCalculate() {
    student2model.average =
        (student2model.english +
            student2model.filipino +
            student2model.math +
            student2model.science +
            student2model.pe) /
        5;

    if (student2model.average >= 90) {
      student2model.grade = 'A';
    } else if (student2model.average >= 80) {
      student2model.grade = 'B';
    } else {
      student2model.grade = 'C';
    }

    switch (student2model.grade) {
      case 'A':
        student2model.remarks = 'Excellent';
        break;
      case 'B':
        student2model.remarks = 'Good';
        break;
      case 'C':
        student2model.remarks = 'Satisfactory';
        break;
      default:
        student2model.remarks = 'Unknown';
    }
  }
}
