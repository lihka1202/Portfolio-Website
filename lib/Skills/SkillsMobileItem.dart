import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsMobileItem extends StatefulWidget {
  const SkillsMobileItem({
    super.key,
    required this.messageTooltip,
    required this.imageLocation,
    required this.boxDecoration,
  });

  final String messageTooltip;
  final String imageLocation;
  final BoxDecoration boxDecoration;

  @override
  State<SkillsMobileItem> createState() => _SkillsMobileItemState();
}

class _SkillsMobileItemState extends State<SkillsMobileItem> {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.messageTooltip,
      textStyle: GoogleFonts.electrolize(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amberAccent),
      preferBelow: true,
      decoration: BoxDecoration(color: Colors.grey[700]),
      child: Container(
        decoration: widget.boxDecoration,
        child: IconButton(
          iconSize: 70,
          onPressed: () {},
          icon: Image.asset(
            widget.imageLocation,
            //colorBlendMode: BlendMode.colorBurn,
          ),
        ),
      ),
    );
  }
}
