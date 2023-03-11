import 'package:flutter/material.dart';
import 'package:portfolio_website/Constants.dart';
import 'package:portfolio_website/Project/ProjectItemCard.dart';

class ProjectDesktopView2 extends StatelessWidget {
  const ProjectDesktopView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            //! Was supposed to be row with cross axis alignment.start, wrap should default
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var item in kItems2)
                Expanded(
                    child: ProjectItemCard(
                  item: item,
                  designHeight: 1854,
                  designWidth: 980,
                )),
            ],
          ),
        ]));
  }
}
