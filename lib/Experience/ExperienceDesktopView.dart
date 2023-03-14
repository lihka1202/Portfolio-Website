import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ExperienceDesktopView extends StatelessWidget {
  const ExperienceDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
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
          ],
        ));
  }
}
