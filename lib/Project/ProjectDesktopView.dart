import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_website/Constants.dart';
import "package:simple_icons/simple_icons.dart";

class ProjectDesktopView extends StatelessWidget {
  const ProjectDesktopView({super.key});

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var item in kItems)
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(item.image),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      item.title,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: Text(
                        item.description,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      runSpacing: 10,
                      children: [
                        for (final item in item.techStacks)
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Chip(label: Text(item)),
                          ),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.generating_tokens),
                          label: Text(
                            "Github",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              backgroundColor: Colors.black,
                              side: BorderSide(
                                  color: Colors.deepOrange, width: 2)),
                        )
                      ],
                    )
                  ],
                )),
            ],
          )
        ],
      ),
    );
  }
}
