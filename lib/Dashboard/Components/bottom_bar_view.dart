import 'package:flutter/material.dart';
import 'package:urvashi_practical_assesment/Dashboard/Components/commonWidgets.dart';
import 'package:urvashi_practical_assesment/Utility/color_utility.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              commonHeaderTitle(title: "INR DIGITAL COIN",fontSize: 1.2,ourFontColor: Colors.blue),
              commonVerticalSpacing10(),
              commonHeaderTitle(fontSize: 1.0,align: TextAlign.start,title: "It is a long established fact that a\nreader will be distracted by"),
              commonVerticalSpacing10(),

              commonHeaderTitle(title: "Follow Us",fontSize: 1.3,ourFontColor: fontColor,fontWeight: 2,align: TextAlign.start),
              commonVerticalSpacing10(),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                    shape: BoxShape.circle
                  ),child: const Icon(Icons.facebook_outlined,color: whiteColor),),

                ],
              )
            ],
          )),

          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: commonHeaderTitle(fontSize: 1.3,align: TextAlign.start,title: "White Papper")),
                  Expanded(child: commonHeaderTitle(fontSize: 1.3,align: TextAlign.start,title: "FAQs")),
                ],
              ),
              commonVerticalSpacing10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: commonHeaderTitle(fontSize: 1.3,align: TextAlign.start,title: "About IDC")),
                  Expanded(child: commonHeaderTitle(fontSize: 1.3,align: TextAlign.start,title: "Privacy Policy")),
                ],
              ),
              commonVerticalSpacing10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: commonHeaderTitle(fontSize: 1.3,align: TextAlign.start,title: "Teams")),
                  Expanded(child: commonHeaderTitle(fontSize: 1.3,align: TextAlign.start,title: "Terms & conditions")),
                ],
              ),
              commonVerticalSpacing10(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: commonHeaderTitle(fontSize: 1.3,align: TextAlign.start,title: "News")),
                  Expanded(child: commonHeaderTitle(fontSize: 1.3,align: TextAlign.start,title: "Support")),
                ],
              )
            ]
          )),
          
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              commonHeaderTitle(fontSize: 1.3,align: TextAlign.start,title: "Subscribe"),
              commonVerticalSpacing10(),
              TextField(
                decoration: InputDecoration(
                  labelText: "Your Email",
                  labelStyle: const TextStyle(
                    color: secondaryPrimaryColor
                  ),
                  suffixIcon: Container(
                    alignment: Alignment.center,
                    // padding: const EdgeInsets.only(bottom: 10),
                    width: 100,
                    decoration:  BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.center,
                          colors: [
                            primaryColor,
                            secondaryPrimaryColor
                          ]),
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(child: commonHeaderTitle(title: "Subscribe",fontSize: 1.0)),
                  ),
                  fillColor: fontColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: fontColor, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: const BorderSide(color: fontColor, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: fontColor, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: fontColor, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  )
                ),
              )
            ],
          ))
        ],
      )
    );
  }
}

