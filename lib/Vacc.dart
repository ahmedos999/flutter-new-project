import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_project22/Callender.dart';
//import 'package:flutter_application_project22/Constant.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
//import 'package:flutter_application_project22/loginD.dart';
//import 'package:flutter_application_project22/logindoc.dart';
//import 'package:flutter_application_project22/loginflutter.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import 'Callender.dart';
import 'constants.dart';
//import 'package:flutter_application_project22/loginpati.dart';

// ignore: camel_case_types
class Vacc extends StatelessWidget {
  var currentIndex = 0;
  List<Map> navigationBarItems = [
  {'icon': Icons.local_hospital, 'index': 0},
  {'icon': Icons.calendar_today, 'index': 1},
];

  int _selectedIndex=0;
final TextEditingController searchController 
  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var submitTextStyle;
    return Scaffold(
      bottomNavigationBar: MoltenBottomNavigationBar(
      selectedIndex: _selectedIndex,
      onTabChange: (clickedIndex) {
        // setState(() {
        //   _selectedIndex = clickedIndex;
        // });
      },
      tabs: [
        MoltenTab(
          icon: Icon(Icons.home),
        ),
        MoltenTab(
          icon: Icon(Icons.home),
        ),
        MoltenTab(
          icon: Icon(Icons.person),
        ),
      ],
   ),
      
        appBar: AppBar(backgroundColor: kPrimaryColor2,),
        body: SingleChildScrollView(
          
          child: Center(
              child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Center(
            child: Column(
              children: [
                 SizedBox(
  width: 250.0,
  child: DefaultTextStyle(
    style: const TextStyle(
      fontSize: 60.0,
      fontFamily: 'Bobbers',
color: kPrimaryColor  ),
    child: AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText('IT IS NOT ENOUGH TO DO YOUR BEST'),
        TyperAnimatedText('YOU MUST KNOW WHAT TO DO'),
        TyperAnimatedText('AND THEN DO YOUR BEST'),
        TyperAnimatedText('YOUR BABY IS OUR CARE'),
      ],
      onTap: () {
        print("Tap Event");

        
      },
    ),
  ),
  
  
),
SizedBox(height: 10,),
Container(
  width: 600,
  height: 100,
  child:   TextButton(onPressed: () {
        Navigator.push(
         context,
           MaterialPageRoute(
          builder: (context) => Calender(),
                        ));
  
  }, child: Text('GO',
  
  style: TextStyle(
  
    fontSize: 60,
    color: kPrimaryLightColor,
  
    backgroundColor: kPrimaryColor,
  ),
  
  
  
  )),
)
              ],
            ),
          ),
              )),
            ),
        ));
  }
}
