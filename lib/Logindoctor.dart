import 'package:flutter/material.dart';
//import 'package:flutter_application_project22/patientSelect.dart';
//import 'package:flutter_application_project22/signup2.dart';
// import 'package:flutter_application_project22/signupPati.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'PatientSelect.dart';
import 'Singup.dart';

//import 'Constant.dart';

class Loginpatien extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Loginpatien> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // final TextEditingController _proController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(129, 18, 219, 189),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(129, 18, 219, 189),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('IT IS NOT ENOUGH TO DO YOUR BEST'),
                          TyperAnimatedText('START '),
                          TyperAnimatedText(
                              'AND KNOW YOU CAN CREATE YOUR ACCOUNT '),
                        ],
                      ))),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(12.0),
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                            CustomTextField(
                              _emailController,
                              hint: 'someone@mail.com',
                              password: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                            CustomTextField(
                              _passwordController,
                              hint: '********',
                              obscure: true,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                //Forgot Password Page
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Can't remember password ?",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: Colors.blueAccent),
                                  )),
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
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(129, 18, 219, 189),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => patientSelect(),
                                    ));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Color.fromARGB(115, 15, 15, 15),
                                    fontSize: 22,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => signupp(),
                                ));
                          },
                          child: Container(
                              alignment: Alignment.center,
                              child: const Text(
                                "Want to join? Sign up",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: Colors.blueAccent),
                              )),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
