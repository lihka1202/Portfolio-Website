import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      var onPressed = () => print("CLick");
      if (size.isMobile) {
        return Container(
          height: 60,
          width: double.infinity,
          color: Colors.black,
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              IconButton(
                icon: const Icon(
                  Icons.menu_book,
                  color: Colors.white,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
              Spacer(),
              Image.asset("images/logo4.png")
              //can add something here later
            ],
          ),
        );
      }
      return Container(
        color: Colors.black,
        height: 100,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset("images/logo4.png"),
            const Spacer(),
            for (var item in kNavigationItems)
              NavBarItem(onPressed: onPressed, text: item.text)
          ],
        ),
      );
    });
  }
}

class NavigationItem {
  final String text;

  NavigationItem(this.text);
}

final kNavigationItems = [
  NavigationItem("About Me"),
  NavigationItem("Skills"),
  NavigationItem("Projects"),
  NavigationItem("Experience"),
];

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: InkWell(
        onTap: onPressed,
        mouseCursor: MaterialStateMouseCursor.clickable,
        hoverColor: Colors.deepOrange,
        splashColor: Colors.yellow,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width < 655 ? 17 : 24)),
        ),
      ),
    );
  }
}
