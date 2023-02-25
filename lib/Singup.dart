//import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';
import 'package:new_flutter_project/widgets/home/components.dart';

import 'constants.dart';

//import 'Constant.dart';

class signupp extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<signupp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // final TextEditingController _proController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromARGB(129, 18, 219, 189),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Bobbers',
                        color: kTextLightColor),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        // TyperAnimatedText('IT IS NOT ENOUGH TO DO YOUR BEST'),
                        // TyperAnimatedText('START '),
                        TyperAnimatedText(' CREATE YOUR ACCOUNT NOW'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(12.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              textfield('Email', 'Someone@gmail.com', false,
                                  TextInputType.emailAddress, Icons.mail),
                              textfield('Phone', 'Someone@gmail.com', false,
                                  TextInputType.number, Icons.phone),
                              textfield('address', 'Bahri', false,
                                  TextInputType.text, Icons.location_city),
                              textfield('Password', '******', false,
                                  TextInputType.text, Icons.lock),
                              textfield('Password', '******', false,
                                  TextInputType.text, Icons.lock),
                              const SizedBox(
                                height: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  //Forgot Password Page
                                },
                                child: Container(
                                  alignment: Alignment.centerRight,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              print(_emailController.text);
                              print(_passwordController.text);
                              //Validate User Inputs
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(129, 12, 199, 171),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Signup",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontFamily: 'Poppins',
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          // GestureDetector(
                          //   onTap: () {
                          //     //Navigate to Register Page
                          //   },
                          //   child: Row(
                          //     children: [
                          //       Text(
                          //         "Want to join?",
                          //         style: TextStyle(fontSize: 17),
                          //       ),
                          //       TextButton(onPressed: () {
                          //           Navigator.push(
                          // context,
                          // MaterialPageRoute(
                          //   builder: (context) => signupp(),
                          // ));
                          //       }, child: Text('Signup',
                          //       style: TextStyle(
                          //         color: Color.fromARGB(255, 204, 3, 204),

                          //       ),))
                          //     ],
                          //   ),
                          // ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
