import 'package:flutter/material.dart';
import 'package:new_flutter_project/widgets/home/components.dart';

import 'DoctorHome.dart';
//import 'package:flutter_application_project22/DOC.dart';

// ignore: camel_case_types
class information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: const Text(
                  'Add an appointment',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 15.0,
                ),
                textfield('Date', '1/1/2012', false, TextInputType.datetime,
                    Icons.date_range),
                textfield('Hospital', 'Royal Care', false, TextInputType.text,
                    Icons.local_hospital),
                textfield('Time', '12:00', false, TextInputType.number,
                    Icons.time_to_leave),
                textfield('Address', 'KHA', false, TextInputType.streetAddress,
                    Icons.location_city),
                textfield('Address', 'KHA', false, TextInputType.streetAddress,
                    Icons.location_city),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff0099c9),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset:
                            const Offset(2, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Appoin();
                            const Icon(Icons.add);
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Done',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
