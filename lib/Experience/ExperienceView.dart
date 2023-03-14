import 'package:flutter/material.dart';
import 'package:portfolio_website/Experience/ExperienceDesktopView.dart';
import 'package:portfolio_website/Experience/ExperienceMobileView.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (_, size) {
      if (size.isMobile) {
        return const ExperienceMobileView();
      }
      return const ExperienceDesktopView();
    });
  }
}
