import 'package:css_website/widgets/custom_buttons.dart';
import 'package:css_website/widgets/custom_textfield.dart';
import 'package:css_website/widgets/custom_textfield2.dart';
import 'package:flutter/material.dart';

class SurveyPage2 extends StatefulWidget {
  final VoidCallback onNext;
  const SurveyPage2({super.key, required this.onNext});

  @override
  State<SurveyPage2> createState() => _SurveyPage2State();
}

class _SurveyPage2State extends State<SurveyPage2> {
  String? _transactionType;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Let’s get specific!',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'Help us understand the details of your visit by providing the following information:',
            style: TextStyle(
              height: 1,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Date',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(),
          const SizedBox(height: 20),
          const Text(
            'Time',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(),
          const SizedBox(height: 20),
          const Text(
            'Purpose of Visit or Transaction',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField2(),
          const SizedBox(height: 20),
          const Text(
            'Transaction Type',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 25,
            child: RadioListTile<String>(
              title: const Text("Face-to-Face"),
              value: "Face-to-Face",
              groupValue: _transactionType,
              onChanged: (value) {
                setState(() {
                  _transactionType = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 25,
            child: RadioListTile<String>(
              title: const Text("Online"),
              value: "Online",
              groupValue: _transactionType,
              onChanged: (value) {
                setState(() {
                  _transactionType = value;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomButtons(
              onPressed: widget.onNext,
              label: "Continue",
            ),
          ),
        ],
      ),
    );
  }
}
