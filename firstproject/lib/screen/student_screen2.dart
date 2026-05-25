import 'package:flutter/material.dart';
import 'package:sample/controller/student2_controller.dart';

class StudentScreen2 extends StatefulWidget {
  const StudentScreen2({super.key});

  @override
  State<StudentScreen2> createState() => _StudentScreen2State();
}

class _StudentScreen2State extends State<StudentScreen2> {
  final Student2Controller student2Controller = Student2Controller();
  final TextEditingController studentname = TextEditingController();
  final TextEditingController english = TextEditingController();
  final TextEditingController filipino = TextEditingController();
  final TextEditingController math = TextEditingController();
  final TextEditingController science = TextEditingController();
  final TextEditingController pe = TextEditingController();
  bool issummitted = false;

  void handleCalulate() {
    setState(() {
      student2Controller.setName(studentname.text);
      student2Controller.setSubjects(
        english: english.text,
        filipino: filipino.text,
        math: math.text,
        science: science.text,
        pe: pe.text,
      );

      student2Controller.getCalculate();
      issummitted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final student2model = student2Controller.student2model;

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
            TextField(controller: english),
            TextField(controller: filipino),
            TextField(controller: math),
            TextField(controller: science),
            TextField(controller: pe),
            ElevatedButton(
              child: Text("Submit"),
              onPressed: () {
                handleCalulate();
              },
            ),
            if (issummitted) ...[
              Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(19),
                  child: Column(
                    children: [
                      Text("Name: ${student2model.name}"),
                      Text("English: ${student2model.english}"),
                      Text("Filipino: ${student2model.filipino}"),
                      Text("Math: ${student2model.math}"),
                      Text("Science: ${student2model.science}"),
                      Text("PE: ${student2model.pe}"),
                      Text("Grade: ${student2model.grade}"),
                      Text("Remarks: ${student2model.remarks}"),
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
