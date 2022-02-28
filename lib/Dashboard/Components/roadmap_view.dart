import 'package:flutter/material.dart';
import 'package:urvashi_practical_assesment/Utility/color_utility.dart';

import 'commonWidgets.dart';

class RoadMapView extends StatelessWidget {
  const RoadMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            commonIndicatorView(),
          ],
        ),
        commonVerticalSpacing10(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(text:'Lorem Ipsum ', style: TextStyle(
                      fontSize: 40,fontWeight: FontWeight.w500,color: whiteColor
                  )),
                  TextSpan(
                    text: "Roadmap",
                    style: TextStyle(
                        fontSize: 40,fontWeight: FontWeight.w500, color: fontColor
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        commonVerticalSpacing10(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            commonHeaderTitle(title: "2016",fontSize: 1.3,fontWeight: 2),
            commonHeaderTitle(title: "2016",fontSize: 1.3,fontWeight: 2)
          ],
        ),
        commonVerticalSpacing10(height: 15),
        commonIndicatorView(width: MediaQuery.of(context).size.width - 100,color: whiteColor),
        commonVerticalSpacing10(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Services(title: "Launch a Project"),
            Services(title: "Launch a Project"),
          ],
        )
      ],
    );
  }


}
