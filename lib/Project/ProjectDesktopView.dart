import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/Constants.dart';
import 'package:portfolio_website/Project/ProjectItemCard.dart';
import "package:simple_icons/simple_icons.dart";

class ProjectDesktopView1 extends StatelessWidget {
  const ProjectDesktopView1({super.key});

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
              TypewriterAnimatedText("Projects",
                  textStyle: const TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 70,
                      fontWeight: FontWeight.bold))
            ],
            totalRepeatCount: 1000,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            //! Was supposed to be row with cross axis alignment.start, wrap should default
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var item in kItems1)
                Expanded(
                    child: ProjectItemCard(
                  item: item,
                  designHeight: 1854,
                  designWidth: 980,
                )),
            ],
          ),
        ],
      ),
    );
  }
}
