import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:dropdown_date_picker/dropdown_date_picker.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ola_like_country_picker/ola_like_country_picker.dart';
//import 'package:ola_like_country_picker/ola_like_country_picker.dart';
import 'package:senior_project/Presentation/Home%20Pages/news_page.dart';
import 'package:senior_project/reusables.dart';
import 'package:tip_dialog/tip_dialog.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'dart:io';
import 'package:custom_dropdown/custom_dropdown.dart';

class accept_form extends StatefulWidget {
  static final now = DateTime.now();
  final dropdownDatePicker = DropdownDatePicker(
    firstDate: ValidDate(year: now.year - 100, month: 1, day: 1),
    lastDate: ValidDate(year: now.year, month: now.month, day: now.day),
    textStyle: TextStyle(
      fontFamily: "Poppins",
      fontSize: 13,
    ),
    // dropdownColor: Colors.blue[200],
    dateHint: DateHint(year: 'yy', month: 'mm', day: 'dd'),

    ascending: false,
  );
  @override
  _accept_formState createState() => _accept_formState();
}

class _accept_formState extends State<accept_form> {
  @override
  bool isChecked = false;
  Future<void>? _launched;

  // Future<void> _launchInWebViewOrVC(String url) async {
  //   if (!await launch(
  //     url,
  //     forceSafariVC: true,
  //     forceWebView: true,
  //     headers: <String, String>{'my_header_key': 'my_header_value'},
  //   )) {
  //     throw 'Could not launch $url';
  //   }
  // }

  late CountryPicker c;
  Country country = Country.fromJson(countryCodes[94]);

  @override
  void initState() {
    super.initState();

    // print(widget.firstName + widget.lastName + widget.email);
    c = CountryPicker(onCountrySelected: (Country country) {
      print(country);
      setState(() {
        this.country = country;
      });
    });
  }

  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        if (isChecked == true) {
          isChecked = false;
        } else
          isChecked = true;
        print(isChecked);
      });
    }
  }

  int _checkboxValue = 1;
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    TextStyle textDecoration = TextStyle(
        fontFamily: "Poppins",
        letterSpacing: 0.5,
        fontSize: 12.7,
        overflow: TextOverflow.ellipsis,
        //decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor.withOpacity(0.8));

    BoxDecoration boxDecoration = BoxDecoration(
      //color: Theme.of(context).primaryColor.withOpacity(0.05),
      color: isDarkMode ? Colors.black.withOpacity(0.3) : Colors.white,
      boxShadow: [
        isDarkMode
            ? BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(0, 0), // changes position of shadow
              )
            : BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
      ],
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          Center(
            child: Text(
              "Ethiopia",
              style: TextStyle(
                fontFamily: "Poppins",
                letterSpacing: 0.5,
                fontSize: 16,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xFF082534),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(right: 10),
                decoration: boxDecoration,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/melaku.jpeg"),
                              fit: BoxFit.cover)),
                      child: GestureDetector(
                        onTap: () {},
                      ),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Melaku Belay", style: textDecoration),
                          SizedBox(
                            height: 2,
                          ),
                          Text("+251 910 10 10 10", style: textDecoration),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              Text("31 years old", style: textDecoration),
                              Text(
                                "    ( " + "10/12/1990" + " )",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins",
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.7)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text("melakubelay@gmail.com", style: textDecoration),
                          SizedBox(
                            height: 2,
                          ),
                          Text("Male", style: textDecoration),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: boxDecoration,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          "Place of Birth",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.4),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("City", style: textDecoration),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Sub-City", style: textDecoration),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Region", style: textDecoration),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Woreda   " + "no", style: textDecoration),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: boxDecoration,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          "Place of Residence",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.4),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("City", style: textDecoration),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Sub-City", style: textDecoration),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Kebele    " + "nmbr",
                                  style: textDecoration),
                              SizedBox(
                                height: 8,
                              ),
                              Text("House no    " + "nmbr",
                                  style: textDecoration),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Region", style: textDecoration),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Woreda   " + "no", style: textDecoration),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Postal Code   " + "no",
                                  style: textDecoration),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: boxDecoration,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Text(
                          "Place of Work",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.4),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name of Institution",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.7),
                            ),
                          ),
                          Text("name of insti", style: textDecoration),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Job Profession",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.7),
                            ),
                          ),
                          Text("Soccer player", style: textDecoration),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("City", style: textDecoration),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Sub-City", style: textDecoration),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Kebele    " + "nmbr",
                                      style: textDecoration),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("House no    " + "nmbr",
                                      style: textDecoration),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Region", style: textDecoration),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Woreda   " + "no",
                                      style: textDecoration),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Postal Code   " + "no",
                                      style: textDecoration),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("+251 14192721", style: textDecoration),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class FileUploadButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         var picked = await FilePicker.platform.pickFiles();
//         if (picked != null) {
//           print(picked.files.first.name);
//         }
//       }
//       child: Container(
//         margin: EdgeInsets.only(top: 15),
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//             color: Color(0xFF082534), borderRadius: BorderRadius.circular(5)),
//         child: Text(
//           'UPLOAD FILE',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
