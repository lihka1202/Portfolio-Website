// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ExperienceDesktopItem extends StatefulWidget {
  const ExperienceDesktopItem({
    Key? key,
    required this.imageLocation,
    required this.nameOfInternship,
    required this.durationOfInternship,
    required this.informationOfInternship,
    required this.testimonialExists,
    required this.gradientChoices,
  }) : super(key: key);

  final String imageLocation;
  final String nameOfInternship;
  final String durationOfInternship;
  final String informationOfInternship;
  final bool testimonialExists;
  final List<Color> gradientChoices;

  @override
  State<ExperienceDesktopItem> createState() => _ExperienceDesktopItemState();
}

class _ExperienceDesktopItemState extends State<ExperienceDesktopItem> {
  final FlipCardController _controller = FlipCardController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return FlipCard(
      speed: 400,
      controller: _controller,
      flipOnTouch: true,
      front: MouseRegion(
        onEnter: (event) => _controller.toggleCard(),
        child: Card(
          color: Colors.transparent,
          shape: const BeveledRectangleBorder(
              side: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Container(
            height: height * 0.4 - 10,
            width: (width - 140) * 0.3,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.black26],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Image.asset(
                    widget.imageLocation,
                    scale: (980 / height) * (1854 / width),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      back: MouseRegion(
        onExit: (event) => _controller.toggleCard(),
        child: Card(
          color: Colors.transparent,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Container(
            height: height * 0.4,
            width: (width - 140) * 0.3,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: widget.gradientChoices),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.nameOfInternship,
                    textScaleFactor: (height < 980 && width < 1854)
                        ? (height / 980) * (width / 1854)
                        : 1, // just try luck here
                    style: GoogleFonts.electrolize(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.durationOfInternship,
                    textScaleFactor: (height < 980 && width < 1854)
                        ? (height / 980) * (width / 1854)
                        : 1, // luck here
                    style: GoogleFonts.electrolize(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.informationOfInternship,
                    textScaleFactor: (height < 980 && width < 1854)
                        ? (height / 980) * (width / 1854)
                        : 1, //luck here
                    style: GoogleFonts.electrolize(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (widget.testimonialExists)
                    FloatingActionButton.extended(
                        onPressed: () {},
                        backgroundColor: Colors.black,
                        label: Text(
                          "Click to view my testimonial!",
                          textScaleFactor: (height < 980 && width < 1854)
                              ? (height / 980) * (width / 1854)
                              : 1,
                          style: GoogleFonts.electrolize(color: Colors.white),
                        ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
