import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/Constants.dart';
import 'package:portfolio_website/Project/ProjectItemCard.dart';
import 'package:portfolio_website/Project/ProjectItemRow.dart';
import "package:simple_icons/simple_icons.dart";

class ProjectMobileView2 extends StatelessWidget {
  const ProjectMobileView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          for (var item in kItems2)
            ProjectItemCard(
              item: item,
            ),
        ],
      ),
    );
  }
}
