import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'bmi.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({
    super.key,
    required this.gender,
    required this.result,
    required this.age,
  });

  final String gender;
  final int result;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f4f7fc"),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BmiScreen()),
            );
          },
          icon: Icon(Icons.arrow_back_ios, color: HexColor("#1f2a38")),
        ),
        title: Text(
          'BMI RESULT',
          style: TextStyle(
            color: HexColor("#1f2a38"),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: HexColor("#f4f7fc"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _fancyCard('Gender', gender, HexColor("#a0d2eb")),
            SizedBox(height: 30),
            _fancyCard('Result', '$result', HexColor("#f8a1c1")),
            SizedBox(height: 30),
            _fancyCard('Age', '$age', HexColor("#fcd581")),
          ],
        ),
      ),
    );
  }

  Widget _fancyCard(String title, String value, Color color) {
    return Container(
      width: 250,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), // زوايا أكبر
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7), color.withOpacity(0.3)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: '$title\n',
                style: TextStyle(
                  color: HexColor("#1f2a38"),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: value,
                style: TextStyle(
                  color: HexColor("#1f2a38"),
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}