import 'package:flutter/material.dart';
import 'package:urvashi_practical_assesment/Utility/color_utility.dart';

import 'commonWidgets.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({Key? key}) : super(key: key);

  List<Widget> pageChildren(double width) {
    return <Widget>[
      SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            commonHeaderTitle(title: "Lorem Ipsum",ourFontColor: fontColor,
                fontWeight: 2,fontSize: 4),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: commonHeaderTitle(title: "Bringing new footprints in \necho system",
                  fontWeight: 0,fontSize: 2.2,align: TextAlign.start),
              // child: Text(
              //   "Bringing new footprints in echo system",
              //   style: TextStyle(fontSize: 16.0, color: Colors.white),
              // ),
            ),

            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 40.0),
                    child: Text(
                      "White Papper",
                      style: TextStyle(color: iconColor),
                    ),
                  ),
                ),
                commonHorizontalSpacing(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    elevation: 2,
                  ),
                  onPressed: () {},
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      gradient: const LinearGradient(colors: [primaryColor, secondaryPrimaryColor]),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      constraints: const BoxConstraints(minWidth: 88.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          commonHeaderTitle(title: 'Learn About IDC'),
                          commonHorizontalSpacing(),
                          const Icon(Icons.play_circle_outline_outlined,color: iconColor)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          margin: const EdgeInsets.all(50),
          width: width - 200,
          child: Image.asset(
            "assets/images/landing_page.png",
            width: 200,
            fit: BoxFit.contain,
          ),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
