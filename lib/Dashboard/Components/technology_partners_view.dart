import 'package:flutter/material.dart';
import 'package:urvashi_practical_assesment/Utility/color_utility.dart';

import 'commonWidgets.dart';

class TechnologyPartnersView extends StatelessWidget {
  const TechnologyPartnersView({Key? key}) : super(key: key);

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
                  TextSpan(
                    text: "Technology",
                    style: TextStyle(
                        fontSize: 40,fontWeight: FontWeight.w500, color: fontColor
                    ),
                  ),
                  TextSpan(text:' Partners', style: TextStyle(
                      fontSize: 40,fontWeight: FontWeight.w500,color: whiteColor
                  )),

                ],
              ),
            ),
          ],
        ),
        commonVerticalSpacing10(height: 30),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: fontColor,width: 2)
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 9,
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 80,width: 80,decoration: const BoxDecoration(
                    color: whiteColor,
                  shape: BoxShape.circle
                )),
                commonVerticalSpacing10(height: 8),
                commonHeaderTitle(title: "Bitcoin",fontSize: 1.2)
              ],
            );
          },),
        )
      ],
    );
  }
}
