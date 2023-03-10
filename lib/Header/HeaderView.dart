import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile)
          return HeaderMobileView(); // does nothing as there is no change for the time being
        return Container(
          height: height,
          width: width,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: HeaderBody(),
                ),
                Image.asset(
                  "images/picture.png",
                  height: width < 1000 ? width * 0.5 : null,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class HeaderBody extends StatelessWidget {
  const HeaderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          "I'm a",
          style: GoogleFonts.openSans(
              fontSize: 70, textStyle: const TextStyle(color: Colors.red)),
          maxLines: 1,
        ),

        //make use of AnimatedTextKit
        AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText("Thinker",
                textStyle: const TextStyle(
                    color: Colors.orange,
                    fontSize: 70,
                    fontWeight: FontWeight.bold)),
            TyperAnimatedText("Student",
                textStyle: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 70,
                    fontWeight: FontWeight.bold)),
            TyperAnimatedText("Dreamer",
                textStyle: const TextStyle(
                    color: Colors.green,
                    fontSize: 70,
                    fontWeight: FontWeight.bold)),
            TyperAnimatedText("Developer",
                textStyle: const TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 70,
                    fontWeight: FontWeight.bold)),
            TyperAnimatedText("Engineer",
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold)),
          ],
          totalRepeatCount: 1000,
        ),
        const SizedBox(
          height: 30,
        ),
        AutoSizeText(
          "I'm looking for new opportunities \nto broaden my horizon and sharpen my skillsets!",
          maxLines: 2,
          style: GoogleFonts.dmSans(
              textStyle: const TextStyle(color: Colors.red, fontSize: 34)),
        ),
        const SizedBox(
          height: 25,
        ),
        FloatingActionButton.extended(
          backgroundColor: Colors.deepOrange,
          splashColor: Colors.yellow,
          hoverColor: Colors.red,
          onPressed: () {},
          label: const AutoSizeText(
            "Contact me",
            maxLines: 1,
          ),
          extendedTextStyle: const TextStyle(fontSize: 30),
        )
      ],
    );
  }
}

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: height * 0.9,
      width: width,
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
              child: Image.asset(
            "images/picture.png",
          )),
          HeaderBody(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
