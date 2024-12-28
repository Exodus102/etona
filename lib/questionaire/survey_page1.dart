import 'package:css_website/widgets/custom_buttons.dart';
import 'package:css_website/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SurveyPage1 extends StatefulWidget {
  final VoidCallback onNext;
  const SurveyPage1({super.key, required this.onNext});

  @override
  State<SurveyPage1> createState() => _SurveyPage1State();
}

class _SurveyPage1State extends State<SurveyPage1> {
  String? _customerType;

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
            'Take a second to introduce yourself!',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'Please note that some fields are optional.',
            style: TextStyle(
              height: 1,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Name (Optional)',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(),
          const SizedBox(height: 20),
          const Text(
            'Contact Number (Optional)',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomTextField(),
          const SizedBox(height: 20),
          const Text(
            'Customer Type',
            style: TextStyle(
              color: Color(0xFF1E1E1E),
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                      child: RadioListTile<String>(
                        title: const Text("Student"),
                        value: "Student",
                        groupValue: _customerType,
                        onChanged: (value) {
                          setState(() {
                            _customerType = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: RadioListTile<String>(
                        title: const Text("Parent"),
                        value: "Parent",
                        groupValue: _customerType,
                        onChanged: (value) {
                          setState(() {
                            _customerType = value;
                          });
                        },
                      ),
                    ),
                    RadioListTile<String>(
                      title: const Text("Faculty"),
                      value: "Faculty",
                      groupValue: _customerType,
                      onChanged: (value) {
                        setState(() {
                          _customerType = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                      child: RadioListTile<String>(
                        title: const Text("Staff"),
                        value: "Staff",
                        groupValue: _customerType,
                        onChanged: (value) {
                          setState(() {
                            _customerType = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: RadioListTile<String>(
                        title: const Text("Alumni"),
                        value: "Alumni",
                        groupValue: _customerType,
                        onChanged: (value) {
                          setState(() {
                            _customerType = value;
                          });
                        },
                      ),
                    ),
                    RadioListTile<String>(
                      title: const Text("Other:______________"),
                      value: "Other",
                      groupValue: _customerType,
                      onChanged: (value) {
                        setState(() {
                          _customerType = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomButtons(
              label: 'Continue',
              onPressed: widget.onNext,
            ),
          )
        ],
      ),
    );
  }
}
