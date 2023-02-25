import 'package:flutter/material.dart';

void main() {
  runApp(profile());
}

class profile extends StatelessWidget {
  //const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new),
          title: const Center(child: Text("Profile")),
          // actions: const [Icon(Icons.more_horiz_outlined)],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    color: Colors.grey,
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "images/profile.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('EDIT')),
                    ElevatedButton(onPressed: () {}, child: Text('SAVE')),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (String value) {
                    // ignore: avoid_print
                    print('value');
                  },
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (String value) {
                    // ignore: avoid_print
                    print('value');
                  },
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                // ),
                SizedBox(
                  height: 10,
                ),

                TextFormField(
                  onFieldSubmitted: (String value) {
                    // ignore: avoid_print
                    print('value');
                  },
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onFieldSubmitted: (String value) {
                    // ignore: avoid_print
                    print('value');
                  },
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // TextFormField(
                //   onFieldSubmitted: (String value) {
                //     // ignore: avoid_print
                //     print('value');
                //   },
                //   keyboardType: TextInputType.text,
                //   decoration: const InputDecoration(
                //     labelText: 'Name',
                //     prefixIcon: Icon(
                //       Icons.person,
                //     ),
                //     border: OutlineInputBorder(),
                //   ),
                // ),
                // TextFormField(
                //   onFieldSubmitted: (String value) {
                //     // ignore: avoid_print
                //     print('value');
                //   },
                //   keyboardType: TextInputType.text,
                //   decoration: const InputDecoration(
                //     labelText: 'Name',
                //     prefixIcon: Icon(
                //       Icons.person,
                //     ),
                //     border: OutlineInputBorder(),
                //   ),
                // ),
                // TextFormField(
                //   onFieldSubmitted: (String value) {
                //     // ignore: avoid_print
                //     print('value');
                //   },
                //   keyboardType: TextInputType.text,
                //   decoration: const InputDecoration(
                //     labelText: 'Name',
                //     prefixIcon: Icon(
                //       Icons.person,
                //     ),
                //     border: OutlineInputBorder(),
                //   ),
                // ),
                // ),
                // const Text("Im back baby"),
                // const Text("watch me stream everyday"),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     Column(
                //       children: const [
                //         Text("123"),
                //         Text("following"),
                //       ],
                //     ),
                //     Column(
                //       children: const [
                //         Text("10M"),
                //         Text("followers"),
                //       ],
                //     ),
                //     Column(
                //       children: const [
                //         Text("199"),
                //         Text("videos"),
                //       ],
                //     ),
                //   ],
                // ),
                // Row(
                //   children: [
                //     Expanded(
                //       child: ElevatedButton(
                //         onPressed: () {},
                //         child: const Text("follow"),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: ClipRRect(
                //         borderRadius: BorderRadius.circular(50),
                //         child: Container(
                //           color: Colors.grey,
                //           height: 35,
                //           width: 35,
                //           child: const Icon(Icons.add),
                //         ),
                //       ),
                //     )
                //   ],
                // ),
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       children: [
                //         Text("Recent broadcast"),
                //         Container(
                //           color: Colors.blue,
                //           height: 5,
                //           width: 150,
                //         )
                //       ],
                //     ),
                //     const Text("Highlights and Uploads"),
                //   ],
                // ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 8.0),
                //     child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Column(
                //           children: [
                //             Container(
                //               height: 150,
                //               width: 170,
                //               margin: const EdgeInsets.only(right: 8.0),
                //               color: Colors.grey,
                //              child: Image.asset("images/profile.jpg",fit: BoxFit.fill,),
                //             ),
                //             Text("Chill Streamtonight...")
                //           ],
                //         ),
                //         Column(
                //           children: [
                //             Container(
                //               height: 150,
                //               width: 170,
                //               margin: const EdgeInsets.only(right: 8.0),
                //               color: Colors.grey,
                //               child: Image.asset("images/profile.jpg",fit: BoxFit.fill,),

                //             ),
                //             Text("Chill Streamtonight...")
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 8.0),
                //     child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Column(
                //           children: [
                //             Container(
                //               height: 150,
                //               width: 170,
                //               margin: const EdgeInsets.only(right: 8.0),
                //               color: Colors.grey,
                //               child: Image.asset("images/profile.jpg",fit: BoxFit.fill,),

                //             ),
                //             Text("Chill Streamtonight...")
                //           ],
                //         ),
                //         Column(
                //           children: [
                //             Container(
                //               height: 150,
                //               width: 170,
                //               margin: const EdgeInsets.only(right: 8.0),
                //               color: Colors.grey,
                //               child: Image.asset("images/profile.jpg",fit: BoxFit.fill,),

                //             ),
                //             Text("Chill Streamtonight...")
                //           ],
                //),
                //    ],
              ]),
        )));
    //],
    // ),
    // ),
    // ),
    //   );
  }
}
