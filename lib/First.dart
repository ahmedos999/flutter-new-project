import 'package:flutter/material.dart';

//import 'package:flutter_application_project22/Constant.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

import 'DoctorHome.dart';
import 'LoginD.dart';
import 'Logindoctor.dart';
import 'constants.dart';
//import 'package:flutter_application_project22/DOC.dart';
// import 'package:flutter_application_project22/PD.dart';
// import 'package:flutter_application_project22/loginD.dart';
// import 'package:flutter_application_project22/logindoc.dart';
// import 'package:flutter_application_project22/loginflutter.dart';
//import 'package:flutter_application_project22/loginpati.dart';

// ignore: camel_case_types
class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var submitTextStyle;
    return Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login as',
              style: TextStyle(
                color: kTextLightColor,
                fontSize: 18,
                fontFamily: 'Poppins',
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
                  offset: const Offset(2, 4), // changes position of shadow
                ),
              ],
            ),
            child: AnimatedButton(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              text: 'Doctor',
              textStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
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
                      builder: (context) => Loginp(),
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
                  offset: const Offset(2, 4), // changes position of shadow
                ),
              ],
            ),
            child: AnimatedButton(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.9,
                text: 'patient',
                textStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    color: Color(0xff0099c9),
                    fontWeight: FontWeight.w600),
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
                        builder: (context) => Loginpatien(),
                      ));
                }),
          ),
        ],
      ),
    )));
  }
}
