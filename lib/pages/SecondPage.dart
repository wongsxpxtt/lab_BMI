import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final double bmiValue;
  final String nameInputType;

  const SecondPage({Key? key, required this.bmiValue, required this.nameInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String result;
    Color resultColor;

    if (bmiValue < 18.5) {
      result = 'น้ำหนักน้อยกว่ามาตรฐาน';
      resultColor = Colors.blue; // or any other color you prefer
    } else if (bmiValue >= 18.5 && bmiValue <= 22.9) {
      result = 'น้ำหนักปกติ';
      resultColor = Colors.green; // or any other color you prefer
    } else if (bmiValue >= 23 && bmiValue <= 24.9) {
      result = 'น้ำหนักเกินมาตรฐาน (อันตราย)';
      resultColor = Colors.orange; // or any other color you prefer
    } else if (bmiValue >= 25 && bmiValue <= 29.9) {
      result = 'โรคอ้วน';
      resultColor = Colors.red; // or any other color you prefer
    } else {
      result = 'โรคอ้วนขั้นสูง (อันตรายมาก)';
      resultColor = Colors.purple; // or any other color you prefer
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("ผลการคำนวณ BMI"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  ' ${nameInputType}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'ค่า BMI ของคุณคือ: ${bmiValue.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  result,
                  style: TextStyle(
                    color: resultColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
