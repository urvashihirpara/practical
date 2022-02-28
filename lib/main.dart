import 'package:flutter/material.dart';

import 'Dashboard/Components/bottom_bar_view.dart';
import 'Dashboard/Components/latest_news_view.dart';
import 'Dashboard/Components/navigation_bar_view.dart';
import 'Dashboard/Components/portfolio_view.dart';
import 'Dashboard/Components/printing_view.dart';
import 'Dashboard/Components/roadmap_view.dart';
import 'Dashboard/Components/technology_partners_view.dart';
import 'Utility/color_utility.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                primaryColor,
                secondaryPrimaryColor
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              NavigationBarView(),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: 40.0),
                child: PortfolioView(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: 40.0),
                child: PrintingView(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: 40.0),
                child: RoadMapView(),
              ),

              Padding(
                padding: EdgeInsets.only(left: 40,right: 40,top: 120,bottom: 30),
                child: TechnologyPartnersView(),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: 40.0),
                child: LatestNewsView(),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 100.0, horizontal: 40.0),
                child: BottomBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
