import 'package:flutter/material.dart';
import 'package:portfolio_website/Skills/SkillsDesktopView.dart';
import 'package:portfolio_website/Skills/SkillsMobileView.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (_, size) {
      if (size.isMobile) {
        return SkillsMobileView();
      }
      return SkillsDesktopView();
    });
  }
}
