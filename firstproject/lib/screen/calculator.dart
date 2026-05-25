import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // functions

  final TextEditingController _num1 = TextEditingController();
  final TextEditingController _num2 = TextEditingController();
  int total = 0;

  @override
  //initState
  void initState() {
    // TODO: implement initState
    super.initState();
    total = 15;
  }

  //setState
  void handleincrement() {
    setState(() {
      total++;
    });
  }

  //addition
  void handleaddition() {
    setState(() {
      total = int.parse(_num1.text) + int.parse(_num2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: _num1,
                decoration: InputDecoration(labelText: 'Enter a number'),
              ),
              
              TextFormField(
                controller: _num2,
                decoration: InputDecoration(labelText: 'Enter another number'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  handleaddition();
                },
                child: Text('Add Numbers'),
                
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  handleincrement();
                },
                child: Text('Increment'),
              ),
              SizedBox(height: 20),
              Text('Total: $total'),
            ],
          ),
        ),
      ),
    );
  }
}
