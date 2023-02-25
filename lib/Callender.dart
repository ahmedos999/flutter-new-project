import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';
//import 'package:flutter_application_project22/Constant.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import 'constants.dart';

void main() => runApp(Calender());

// ignore: camel_case_types
class Calender extends StatelessWidget {
  Calender({this.event}) : super();
  final event;
  var currentIndex = 0;
  List<Map> navigationBarItems = [
    {'icon': Icons.local_hospital, 'index': 0},
    {'icon': Icons.calendar_today, 'index': 1},
  ];

  int _selectedIndex = 0;
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // bottomNavigationBar: BottomNavigationBar(
          //     type: BottomNavigationBarType.fixed,
          //     // currentIndex: currentIndex,
          //     onTap: (index) {},
          //     items: const [
          //       BottomNavigationBarItem(
          //         icon: Icon(
          //           Icons.home,
          //         ),
          //         label: 'Home',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(
          //           Icons.menu,
          //         ),
          //         label: 'Online',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.person),
          //         label: 'Information',
          //       ),
          //     ]),
          //appBar: AppBar(),
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
          ),
          body: Scaffold(
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

            body: WeekView(),
            // Your initialization for material app.
          ),
        ),
      ),
    );
  }
}
