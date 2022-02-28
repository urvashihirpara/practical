import 'package:flutter/material.dart';
import 'package:urvashi_practical_assesment/Dashboard/Components/commonWidgets.dart';
import 'package:urvashi_practical_assesment/Utility/color_utility.dart';

class PrintingView extends StatelessWidget {
  const PrintingView({Key? key}) : super(key: key);

  List<Widget> pageChildren(double width) {
    return <Widget>[
      SizedBox(
        width: width ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            commonIndicatorView(),
            commonVerticalSpacing10(),
            RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                children: [
                  TextSpan(text:'Lorem Ipsum is simply \ndummy test of ', style: TextStyle(
                    fontSize: 40,fontWeight: FontWeight.w500,color: whiteColor
                  )),
                  TextSpan(
                    text: "the printing",
                    style: TextStyle(
                        fontSize: 40,fontWeight: FontWeight.w500, color: fontColor
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: commonHeaderTitle(align: TextAlign.start,fontSize: 1.3,ourFontColor: Colors.white54,title: "It is a long established fact that a reader\nwill be distracted by the readable\ncontent of a page when looking at its\nlayout. The point of")
            ),

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
                  constraints: const BoxConstraints(minWidth: 108.0),
                  child: commonHeaderTitle(title: 'Learn More')
                ),
              ),
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
            "assets/images/globe-01.png",
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
