import 'package:flutter/material.dart';
import 'package:urvashi_practical_assesment/Utility/color_utility.dart';

import 'commonWidgets.dart';

class LatestNewsView extends StatelessWidget {
  const LatestNewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LatestNewsViewCard(title: "Launch a Project"),
        const LatestNewsViewCard(title: "Launch a Project"),
        const LatestNewsViewCard(title: "Launch a Project"),
        commonHorizontalSpacing(),
        Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          textBaseline: TextBaseline.ideographic,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                commonIndicatorView(),
              ],
            ),
            commonVerticalSpacing10(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(
                    children: [
                      TextSpan(text:'Latest ', style: TextStyle(
                          fontSize: 40,fontWeight: FontWeight.w500,color: whiteColor
                      )),
                      TextSpan(
                        text: "News",
                        style: TextStyle(
                            fontSize: 40,fontWeight: FontWeight.w500, color: fontColor
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            commonVerticalSpacing10(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: fontColor),
                borderRadius: BorderRadius.circular(20)
              ),
              child: commonHeaderTitle(title: "View More",ourFontColor: fontColor),
            )
          ],
        ))
      ],
    );
  }
}

class LatestNewsViewCard extends StatelessWidget {
  const LatestNewsViewCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              elevation: 5,
              shadowColor: iconColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)
              ),
              color: secondaryPrimaryColor,
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                height: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(16.0),
                 color: secondaryPrimaryColor,
               ),
              ),
            ),
            commonVerticalSpacing10(),
            Row(
              children: [
                Expanded(
                    child: commonHeaderTitle(align: TextAlign.start, title: title,ourFontColor: fontColor,fontSize: 1.3)
                ),
              ],
            ),
            commonVerticalSpacing10(height: 20),
            Row(
              children: [
                Flexible(
                  child: commonHeaderTitle(
                      align: TextAlign.start,
                      ourFontColor: whiteColor,
                      fontSize: 1.1,
                      title: "It is a long established fact that a\nreader will be distracted by"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
