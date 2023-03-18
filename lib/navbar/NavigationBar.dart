import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/main.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:provider/provider.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
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
            for (var item in navigationItems)
              NavBarItem(
                  onPressed: () {
                    scrollController.animateTo(item.position?.toDouble() ?? 0.0,
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.easeInOut);
                  },
                  text: item.text)
          ],
        ),
      );
    });
  }
}

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
                  fontSize: MediaQuery.of(context).size.width < 690 ? 17 : 24)),
        ),
      ),
    );
  }
}
