import 'package:css_website/questionaire/landing_page_questionaire.dart';
import 'package:css_website/questionaire/survey_page1.dart';
import 'package:css_website/questionaire/survey_page2.dart';
import 'package:css_website/questionaire/survey_page3.dart';
import 'package:flutter/material.dart';

class Questionaire extends StatelessWidget {
  const Questionaire({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final PageController pageController = PageController();

    void navigateToNextPage() {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }

    return Container(
      width: screenWidth,
      height: screenHeight * 0.69,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F7F9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          LandingPageQuestionaire(
            onNext: navigateToNextPage,
          ),
          SurveyPage1(
            onNext: navigateToNextPage,
          ),
          SurveyPage2(
            onNext: navigateToNextPage,
          ),
          SurveyPage3(
            onNext: navigateToNextPage,
          ),
        ],
      ),
    );
  }
}
