import 'package:flutter/material.dart';

class LicenseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 0.1,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image(
                        height: 50,
                        width: 50,
                        image: AssetImage("assets/logo.png"),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Ethiopian Dance Art association",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "Ethiopian Dance Art association",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "phone:- +251 911 547577 / +251 911 403456",
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                    Container()
                  ],
                ),
                Divider(
                  color: Colors.red,
                  thickness: 4,
                ),
                Center(child: Text("yeabalat card")),
                SizedBox(
                  height: 10,
                ),
                Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image(
                      height: 130,
                      width: 110,
                      image: AssetImage('assets/melaku.jpeg'),
                      fit: BoxFit.fitHeight,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      "Name",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Addis bekele"),
                                    Text("Addis bekele"),
                                  ],
                                ),
                                SizedBox()
                              ],
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "           ",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Expanded(
                                      child: Divider(
                                    height: 0,
                                    thickness: 3,
                                  )),
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    Text(
                                      "Name",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Addis bekele"),
                                    Text("Addis bekele"),
                                  ],
                                ),
                                SizedBox()
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "           ",
                                  style: TextStyle(fontSize: 10),
                                ),
                                Expanded(
                                  child: Divider(
                                    height: 0,
                                    thickness: 3,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'num',
                ),
                Row(
                  children: [
                    Text(
                      'ID No',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '0004',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.red,
                  thickness: 4,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("email:- "),
                      Text("ethiopianart@gmail.com")
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 0.1,
                  offset: Offset(0, 0),

                  /// changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ethiopian Dance Art association",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Ethiopian Dance Art association",
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      "nachew",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Center(child: Text("yeabalat card")),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "adrasha: ",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "addis ababa",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "adrasha: ",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "addis ababa",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "wereda: ",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "6",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "yebet kuter: ",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "1725",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "phone: ",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      "+251 911 123456",
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          "yetsetebet ken",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "Date of issue",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "genbot 12/2014",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "May 10/2021",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "meyabekabet ken",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "Expirey",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "genbot 12/2014",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "May 10/2021",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "yebaleseltanu signature",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
