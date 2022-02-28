import 'package:flutter/material.dart';
import 'package:urvashi_practical_assesment/Dashboard/Components/commonWidgets.dart';
import 'package:urvashi_practical_assesment/Utility/color_utility.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Image.asset(
                "assets/images/globe-01.png",
                width: 60,height: 60,
              ),
              commonHorizontalSpacing(),
              commonHeaderTitle(title: "Lorem Ipsum",ourFontColor: fontColor,
                  fontWeight: 2,fontSize: 1.5),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                commonHeaderTitle(title: "White Papper",ourFontColor: whiteColor,fontSize: 1.2),
                commonHorizontalSpacing(width: 30),
                commonHeaderTitle(title: "About",ourFontColor: whiteColor,fontSize: 1.2),
                commonHorizontalSpacing(width: 30),
                commonHeaderTitle(title: "Road Map",ourFontColor: whiteColor,fontSize: 1.2),
                commonHorizontalSpacing(width: 30),
                commonHeaderTitle(title: "Team",ourFontColor: whiteColor,fontSize: 1.2),
                commonHorizontalSpacing(width: 30),
                commonHeaderTitle(title: "News",ourFontColor: whiteColor,fontSize: 1.2),
                commonHorizontalSpacing(width: 30),
                commonHeaderTitle(title: "FAQ's",ourFontColor: whiteColor,fontSize: 1.2),
                commonHorizontalSpacing(width: 30),

              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(children: <Widget>[
        Row(
          children: [
            Image.asset(
              "assets/images/globe-01.png",
              width: 60,height: 60,
            ),
            commonHorizontalSpacing(),
            commonHeaderTitle(title: "Lorem Ipsum",ourFontColor: fontColor,
                fontWeight: 2,fontSize: 1.5),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              commonHeaderTitle(title: "White Papper",ourFontColor: whiteColor,fontSize: 1.2),
              commonHorizontalSpacing(width: 30),
              commonHeaderTitle(title: "About",ourFontColor: whiteColor,fontSize: 1.2),
              commonHorizontalSpacing(width: 30),
              commonHeaderTitle(title: "Road Map",ourFontColor: whiteColor,fontSize: 1.2),
              commonHorizontalSpacing(width: 30),
              commonHeaderTitle(title: "Team",ourFontColor: whiteColor,fontSize: 1.2),
              commonHorizontalSpacing(width: 30),
              commonHeaderTitle(title: "News",ourFontColor: whiteColor,fontSize: 1.2),
              commonHorizontalSpacing(width: 30),
              commonHeaderTitle(title: "FAQ's",ourFontColor: whiteColor,fontSize: 1.2),
            ],
          ),
        )
      ]),
    );
  }
}
