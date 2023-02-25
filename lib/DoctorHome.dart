import 'package:flutter/material.dart';
//import 'package:flutter_application_project22/Information.dart';

import 'Information.dart';
// ignore: unused_import

void main() {
  runApp(Appoin());
}

class Appoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //currentIndex: currentIndex,
          onTap: (index) {
            //  setState(() {
            //     currentIndex = index;
            //   });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'Profile',
            ),
          ]),
      appBar: AppBar(

          //  title: Text(widget.title),
          ),
      body: Center(
        child: Text('INSERT YOUR APPOIMENTS',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            )),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return information();
                },
              ),
            );
          }), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
