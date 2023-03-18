import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Constants.dart';

class ProjectItemCard extends StatelessWidget {
  const ProjectItemCard({
    super.key,
    required this.item,
  });

  final ProjectItems item;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print(height);
    print(width);
    final area = height * width;
    return Card(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(item.image),
          const SizedBox(
            height: 20,
          ),
          // add expandable panel here?
          Text(
            item.title,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: Text(
              item.description,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          Wrap(
            runSpacing: 10,
            children: [
              for (final chipGenerator in item.techStacks)
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Chip(
                    label: Text(
                      chipGenerator,
                      style: GoogleFonts.electrolize(
                          color: Colors.white, fontSize: 17),
                    ),
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
              if (item.github)
                OutlinedButton.icon(
                  onPressed: () => launchUrl(Uri.parse(item.url)),
                  icon: const FaIcon(FontAwesomeIcons.github),
                  label: Text(
                    "Github",
                    style: GoogleFonts.electrolize(
                        color: Colors.white, fontSize: 17),
                  ),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      backgroundColor: Colors.black,
                      side:
                          BorderSide(color: Colors.deepOrangeAccent, width: 2)),
                )
            ],
          ),
        ],
      ),
    );
  }
}
