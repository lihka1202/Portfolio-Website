// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceMobileItem extends StatefulWidget {
  const ExperienceMobileItem(
      {Key? key,
      required this.imageLocation,
      required this.nameOfInternship,
      required this.durationOfInternship,
      required this.informationOfInternship,
      required this.testimonialExists,
      required this.gradientChoices,
      required this.urlLink})
      : super(key: key);

  final String imageLocation;
  final String nameOfInternship;
  final String durationOfInternship;
  final String informationOfInternship;
  final bool testimonialExists;
  final List<Color> gradientChoices;
  final String urlLink;
  @override
  State<ExperienceMobileItem> createState() => _ExperienceMobileItemState();
}

class _ExperienceMobileItemState extends State<ExperienceMobileItem> {
  final FlipCardController _controller = FlipCardController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return FlipCard(
      speed: 400,
      controller: _controller,
      flipOnTouch: true,
      front: Card(
        color: Colors.transparent,
        shape: const BeveledRectangleBorder(
            side: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
          height: height * 0.45,
          width: width,
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
                  //scale: (980 / height) * (1854 / width),
                ),
              ),
            ],
          ),
        ),
      ),
      back: Card(
        color: Colors.transparent,
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
          height: height * 0.45,
          width: width,
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
                  // textScaleFactor: (height < 980 && width < 1854)
                  //     ? (height / 980) * (width / 1854)
                  //     : 1, // just try luck here
                  style: GoogleFonts.electrolize(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.durationOfInternship,
                  // textScaleFactor: (height < 980 && width < 1854)
                  //     ? (height / 980) * (width / 1854)
                  //     : 1, // luck here
                  style: GoogleFonts.electrolize(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.informationOfInternship,
                  // textScaleFactor: (height < 980 && width < 1854)
                  //     ? (height / 980) * (width / 1854)
                  //     : 1, //luck here
                  style: GoogleFonts.electrolize(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                if (widget.testimonialExists)
                  FloatingActionButton.extended(
                      onPressed: () => launchUrl(Uri.parse(widget.urlLink)),
                      backgroundColor: Colors.black,
                      label: Text(
                        "Click to view my testimonial!",
                        // textScaleFactor: (height < 980 && width < 1854)
                        //     ? (height / 980) * (width / 1854)
                        //     : 1,
                        style: GoogleFonts.electrolize(
                            color: Colors.white, fontSize: 10),
                      ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
