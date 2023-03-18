import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_website/Constants.dart';
import 'package:portfolio_website/Experience/ExperienceDesktopItem.dart';
import 'package:portfolio_website/Experience/ExperienceMobileItem.dart';

class ExperienceMobileView extends StatelessWidget {
  const ExperienceMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    double Height = height;
    double Width = width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: Height * 2.2,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText("Experience",
                  textStyle: const TextStyle(
                      color: Colors.cyan,
                      fontSize: 60,
                      fontWeight: FontWeight.bold))
            ],
            totalRepeatCount: 1000,
          ),
          for (var item in kExperienceDesktopItems)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ExperienceMobileItem(
                imageLocation: item.imageLocation,
                nameOfInternship: item.nameOfInternship,
                durationOfInternship: item.durationOfInternship,
                informationOfInternship: item.informationOfInternship,
                testimonialExists: item.testimonialExists,
                gradientChoices: item.gradientChoices,
                urlLink: item.urlLink,
              ),
            )
        ],
      ),
    );
  }
}
