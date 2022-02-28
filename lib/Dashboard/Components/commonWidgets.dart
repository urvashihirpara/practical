import 'package:flutter/material.dart';
import 'package:urvashi_practical_assesment/Utility/color_utility.dart';

TextStyle primary14PxNormal = const TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.normal);

SizedBox commonVerticalSpacing10({double height = 10.0}) {
  return SizedBox(height: height);
}

SizedBox commonHorizontalSpacing({double width = 10.0}) {
  return SizedBox(width: width);
}

Widget commonIndicatorView({double width = 100, Color color = iconColor}){
  return Container(height: 4,width: width,decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5)
  ),);
}

Widget commonHeaderTitle(
    {TextAlign align = TextAlign.center,
      String? title,
      Color ourFontColor = whiteColor,
      int fontWeight = 0,
      double fontSize = 1
    }) {
  return Text(title ?? "",
      style: primary14PxNormal.apply(color: ourFontColor, fontSizeFactor: fontSize,fontWeightDelta: fontWeight),
      textAlign: align);
}

class Services extends StatelessWidget {
  const Services({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Material(
        elevation: 7,
        shadowColor: iconColor,
        borderRadius: BorderRadius.circular(8.0),
        color: secondaryPrimaryColor,
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: commonHeaderTitle(align: TextAlign.start, title: title,ourFontColor: fontColor,fontSize: 1.3)
                  ),
                ],
              ),
             commonVerticalSpacing10(height: 30),
              commonHeaderTitle(
                  align: TextAlign.start,
                  ourFontColor: whiteColor,
                  fontSize: 1.1,
                  title: "It is a long established fact that a\nreader will be distracted by")
            ],
          ),
        ),
      ),
    );
  }
}
