import 'package:flutter/material.dart';
import 'package:sample/controller/student_controller.dart';
import 'package:sample/model/student_model.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  final StudentController studentController = StudentController();
  final TextEditingController studentname = TextEditingController();
  final TextEditingController studentscore = TextEditingController();
  bool issummitted = false;

  void handleCalculate() {
    setState(() {
      studentController.setName(studentname.text);
      studentController.setScore(studentscore.text);
      studentController.calculate();
      issummitted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final studentmodel = studentController.studentmodel;

    return Scaffold(
      appBar: AppBar(
        title: Text("Student Grade"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(controller: studentname),
            TextField(controller: studentscore),
            ElevatedButton(
              child: Text("Submit"),
              onPressed: () {
                handleCalculate();
              },
            ),
            if (issummitted) ...[
              Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(19),
                  child: Column(
                    children: [
                      Text("Name: ${studentmodel.name}"),
                      Text("Score: ${studentmodel.score}"),
                      Text("Grade: ${studentmodel.grade}"),
                      Text("Remarks: ${studentmodel.remarks}"),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
