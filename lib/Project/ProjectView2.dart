import 'package:flutter/material.dart';
import 'package:portfolio_website/Project/ProjectDesktopView2.dart';
import 'package:portfolio_website/Project/ProjectMobileView2.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectView2 extends StatelessWidget {
  const ProjectView2({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (_, size) {
      if (size.isMobile) return const ProjectMobileView2();
      return const ProjectDesktopView2();
    });
  }
}
