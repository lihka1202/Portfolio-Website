import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/Constants.dart';
import 'package:portfolio_website/Project/ProjectItemCard.dart';
import 'package:portfolio_website/Project/ProjectItemRow.dart';
import "package:simple_icons/simple_icons.dart";

class ProjectMobileView1 extends StatelessWidget {
  const ProjectMobileView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText("Projects",
                  textStyle: const TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 50,
                      fontWeight: FontWeight.bold))
            ],
            totalRepeatCount: 1000,
          ),
          const SizedBox(
            height: 20,
          ),
          for (final item in kItems1)
            ProjectItemCard(
              item: item,
            ),
        ],
      ),
    );
  }
}
