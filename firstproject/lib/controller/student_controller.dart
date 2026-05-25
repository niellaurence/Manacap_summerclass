import 'package:sample/model/student_model.dart';

class StudentController {
  final StudentModel studentmodel = StudentModel();

  // setters

  void setName(String name) {
    studentmodel.name = name;
  }

  void setScore(String input) {
    studentmodel.score = double.tryParse(input) ?? 0;
  }

  //function to calculate grades based on scores
  void calculate() {
    double score = studentmodel.score;

    if (score >= 90) {
      studentmodel.grade = 'A';
    } else if (score >= 80) {
      studentmodel.grade = 'B';
    } else {
      studentmodel.grade = 'C';
    }

    switch (studentmodel.grade) {
      case 'A':
        studentmodel.remarks = 'Excellent';
        break;
      case 'B':
        studentmodel.remarks = 'Good';
        break;
      case 'C':
        studentmodel.remarks = 'Satisfactory';
        break;
      default:
        studentmodel.remarks = 'Needs Improvement';
    }
  }
}
