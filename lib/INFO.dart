import 'package:flutter/material.dart';
//import 'package:flutter_application_project22/Constant.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({key});
//farmerInfoModle dataModel ;
  // FarmerInfoScreen({required this.dataModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 88, 224),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 15,
                child: Column(
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              "Details",
                              style: TextStyle(
                                  fontSize: 32,
                                  color: Color.fromARGB(255, 76, 175, 158),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 85,
                  child: Container(
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      color: Color(0xffF0F9F1),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 40,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 35,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            top: 15, bottom: 15, right: 10),
                                        height: double.infinity,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            "mohammed.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 65,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            top: 15, bottom: 15, right: 10),
                                        height: double.infinity,
                                        child: Column(
                                          children: [
                                            Expanded(
                                                flex: 20,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Text(
                                                      "الحالة : ",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            Expanded(
                                                flex: 70,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text("Location : "),
                                                        Text("Khartoum"),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text("Experience : "),
                                                        Text(
                                                            5.toString() + " "),
                                                        Text(" Years")
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                            child: Text(
                                                                "Phone : " +
                                                                    "0117034643")),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                            child: Text("Email : " +
                                                                "mstar.hmmod@gmail.com"))
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                            Expanded(
                                                flex: 10,
                                                child: Container(
                                                    padding: EdgeInsets.only(
                                                        top: 3,
                                                        bottom: 3,
                                                        left: 7,
                                                        right: 7),
                                                    width: 120,
                                                    height: 35,
                                                    child: Container())),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rana Essam Abdalhalleem",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff4CAF50),
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 30,
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        children: [
                                          Text("More detalis: "),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                                  "These doctors provide care for children of all ages, from birth to adolescence. Pediatrics has developed as an independent branch of medicine, because many health problems occur mainly or exceptionally in children. For example, chickenpox affects children much more than adults. Because children differ physically and psychologically from adults, doctors must treat them differently. In addition, children are growing rapidly, which makes them change faster than adults.ل " +
                                                      "....")),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(right: 20),
                                    //   child: Row(
                                    //     ///لازم تصلح الغلط  المنطقي هنا
                                    //           children: [
                                    //             Text(" المحاصيل : "),
                                    //             Text("فلفل حار"+" "+", "),
                                    //             Text("طماطم"+" "+", "),
                                    //             Text("بطاطس"+"  "),
                                    //           ],
                                    //         ),
                                    // ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 20,
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 185,
                                      height: 45,
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color(0xff4CAF50)),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)))),
                                        onPressed: () {},
                                        child: Center(
                                          child: Text(
                                            "Appointments available",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
