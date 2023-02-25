import 'package:flutter/material.dart';

//import 'package:flutter_application_project22/loginpati.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:new_flutter_project/screens/home_screen.dart';

import 'package:flutter_animated_button/flutter_animated_button.dart';

import 'Profile.dart';
import 'Vacc.dart';
import 'constants.dart';

// ignore: camel_case_types
class patientSelect extends StatelessWidget {
  var currentIndex = 0;
  List<Map> navigationBarItems = [
    {'icon': Icons.local_hospital, 'index': 0},
    {'icon': Icons.calendar_today, 'index': 1},
  ];

  int _selectedIndex = 0;
  final TextEditingController searchController = TextEditingController();
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
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          actions: [
            IconButton(
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return profile();
                        const Icon(Icons.add);
                      },
                    ),
                  );
                }),
                icon: Icon(Icons.person))
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('START  WITH',
                        style: TextStyle(
                          color: kTextLightColor,
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 4,
                            blurRadius: 6,
                            offset: const Offset(
                                2, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: AnimatedButton(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.9,
                        text: 'Doctors',
                        textStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        isReverse: true,
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.LEFT_TO_RIGHT,
                        //  textStyle: submitTextStyle,
                        backgroundColor: Color(0xff0099c9),

                        borderRadius: 10,
                        borderWidth: 2,
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 4,
                            blurRadius: 6,
                            offset: const Offset(
                                2, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: AnimatedButton(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.9,
                          text: 'Vaccinations',
                          textStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0099c9),
                          ),
                          isReverse: true,
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.LEFT_TO_RIGHT,
                          //  textStyle: submitTextStyle,
                          backgroundColor: Colors.white,
                          borderRadius: 10,
                          borderWidth: 2,
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Vacc(),
                                ));
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
