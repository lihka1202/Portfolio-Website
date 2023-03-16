import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_website/Experience/ExperienceDesktopItem.dart';
import 'package:portfolio_website/Constants.dart';

class ExperienceDesktopView extends StatelessWidget {
  const ExperienceDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if (height <= 980 && width < 1343) {
      height = height + (1854 - width);
    }
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText("Experience",
                    textStyle: const TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 70,
                        fontWeight: FontWeight.bold))
              ],
              totalRepeatCount: 1000,
            ),
            Wrap(
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                for (var item in kExperienceDesktopItems)
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ExperienceDesktopItem(
                      durationOfInternship: item.durationOfInternship,
                      imageLocation: item.imageLocation,
                      informationOfInternship: item.informationOfInternship,
                      nameOfInternship: item.nameOfInternship,
                      testimonialExists: item.testimonialExists,
                      gradientChoices: item.gradientChoices,
                    ),
                  ),
              ],
            ),
          ],
        ));
  }
}
