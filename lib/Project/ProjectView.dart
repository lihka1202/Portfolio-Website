// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_website/Project/ProjectDesktopView.dart';
import 'package:portfolio_website/Project/ProjectMobileView.dart';

class ProjectView1 extends StatelessWidget {
  const ProjectView1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (_, size) {
      if (size.isMobile) {
        return ProjectMobileView1();
      }
      return ProjectDesktopView1();
    });
  }
}
