import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/Skills/SkillDesktopItem.dart';

import 'package:portfolio_website/Constants.dart';

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    double Height = height;
    double Width = width;
    if (height <= 980 && width < 1343) {
      Height = height + (1854 - width);
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      height: Height,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText("Skills",
                  textStyle: const TextStyle(
                      color: Colors.lightGreenAccent,
                      fontSize: 70,
                      fontWeight: FontWeight.bold))
            ],
            totalRepeatCount: 1000,
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            children: [
              Text(
                "Here are some programming languages that I have worked with:",
                style:
                    GoogleFonts.electrolize(color: Colors.white, fontSize: 30),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              for (var item in kprogrammingLanguageSkillList)
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SkillsDesktopItem(
                    messageTooltip: item.messageTooltip,
                    imageLocation: item.imageLocation,
                    boxDecoration: item.boxDecoration,
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              Text(
                "Here are some frameworks and libraries that I have worked with:",
                style:
                    GoogleFonts.electrolize(color: Colors.white, fontSize: 30),
              )
            ],
          ),
          Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              for (var item in kFrameWorkList)
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SkillsDesktopItem(
                    messageTooltip: item.messageTooltip,
                    imageLocation: item.imageLocation,
                    boxDecoration: item.boxDecoration,
                  ),
                ),
            ],
          ),
          Wrap(
            children: [
              Text(
                "Here are some other softwares that I work with:",
                style:
                    GoogleFonts.electrolize(color: Colors.white, fontSize: 30),
              )
            ],
          ),
          Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              for (var item in kOtherSoftwares)
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SkillsDesktopItem(
                    messageTooltip: item.messageTooltip,
                    imageLocation: item.imageLocation,
                    boxDecoration: item.boxDecoration,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
