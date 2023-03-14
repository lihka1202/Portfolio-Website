import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/Constants.dart';
import 'package:portfolio_website/Skills/SkillsMobileItem.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({super.key});

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
            height: 10,
          ),
          Wrap(
            children: [
              Text(
                "Here are some programming languages that I have worked with:",
                style:
                    GoogleFonts.electrolize(color: Colors.white, fontSize: 20),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SkillsPageOne(),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            children: [
              Text(
                "Here are some libraries and frameworks that I have worked with:",
                style:
                    GoogleFonts.electrolize(color: Colors.white, fontSize: 20),
              )
            ],
          ),
          const SkillsPageTwo(),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            children: [
              Text(
                "Here are some other softwares that I have worked with:",
                style:
                    GoogleFonts.electrolize(color: Colors.white, fontSize: 20),
              )
            ],
          ),
          const SkillPageThree(),
        ],
      ),
    );
  }
}

class SkillsPageOne extends StatelessWidget {
  const SkillsPageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        for (var item in kprogrammingLanguageSkillMobileList)
          Padding(
              padding: const EdgeInsets.all(10),
              child: SkillsMobileItem(
                messageTooltip: item.messageTooltip,
                imageLocation: item.imageLocation,
                boxDecoration: item.boxDecoration,
              )),
      ],
    );
  }
}

class SkillsPageTwo extends StatelessWidget {
  const SkillsPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        for (var item in kFrameWorkMobileList)
          Padding(
              padding: const EdgeInsets.all(10),
              child: SkillsMobileItem(
                messageTooltip: item.messageTooltip,
                imageLocation: item.imageLocation,
                boxDecoration: item.boxDecoration,
              )),
      ],
    );
  }
}

class SkillPageThree extends StatelessWidget {
  const SkillPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        for (var item in kOtherMobileSoftwares)
          Padding(
              padding: const EdgeInsets.all(10),
              child: SkillsMobileItem(
                messageTooltip: item.messageTooltip,
                imageLocation: item.imageLocation,
                boxDecoration: item.boxDecoration,
              )),
      ],
    );
  }
}
