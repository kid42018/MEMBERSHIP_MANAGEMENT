import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:dropdown_date_picker/dropdown_date_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ola_like_country_picker/ola_like_country_picker.dart';
import 'package:senior_project/reusables.dart';
import 'package:tip_dialog/tip_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'dart:io';

class applyform extends StatefulWidget {
  applyform({Key key}) : super(key: key);

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
  _applyformState createState() => _applyformState();
}

class _applyformState extends State<applyform> {
  @override
  bool isChecked = false;
  Future<void> _launched;

  Future<void> _launchInWebViewOrVC(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

   CountryPicker c;
  Country country = Country.fromJson(countryCodes[94]);

  @override
  void initState() {
    super.initState();
    c = CountryPicker(onCountrySelected: (Country country) {
      print(country);
      setState(() {
        this.country = country;
      });
    });
  }

  void checkBoxCallBack(bool checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        if (isChecked == true) {
          isChecked = false;
        } else
          isChecked = true;

        // isChecked = checkBoxState;
        print(isChecked);
      });
    }
  }

  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    var boxDecoration = BoxDecoration(
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
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image(
              image: AssetImage("assets/logo.png"),
            ),
          )
        ],
        backgroundColor: Color(0xFF082534),
        elevation: 0,
        title: Text("Apply",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "Poppins",
                letterSpacing: 3,
                fontSize: 17,
                fontWeight: FontWeight.bold)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Hero(
                          tag: "picture",
                          child: Container(
                            margin: EdgeInsets.only(top: 18, left: 10),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.height * 0.12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/melaku.jpeg"),
                                    fit: BoxFit.cover)),
                            child: GestureDetector(
                              onTap: () {},
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(left: 20, top: 30),
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(country.flagUri,
                                    package: 'ola_like_country_picker'),
                              ),
                            ),
                          ),
                          onTap: () {
                            c.launch(context);
                          },
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextFieldWithLessNumber(
                            Name: "Full Name",
                            short: false,
                            hint: "",
                          ),
                          Container(
                            width: 200,
                            child: IntlPhoneField(
                              showCountryFlag: false,
                              readOnly: false,
                              style: TextStyle(fontSize: 13),
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                labelStyle: TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Poppins",
                                    color: Theme.of(context).primaryColor),
                              ),
                              onChanged: (phone) {
                                //print(phone.completeNumber);
                              },
                              onCountryChanged: (phone) {
                                //print('Country code changed to: ' + phone.countryCode);
                              },
                            ),
                          ),
                          widget.dropdownDatePicker,
                          TextFieldWithLessNumber(
                              Name: "Email",
                              short: false,
                              hint: "com@exaple.com"),
                          GroupButton(
                            direction: Axis.horizontal,
                            borderRadius: BorderRadius.circular(5),
                            isRadio: true,
                            spacing: 8,
                            unselectedColor:
                                Theme.of(context).primaryColorLight,
                            unselectedBorderColor:
                                Theme.of(context).primaryColor,
                            unselectedTextStyle: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins"),
                            selectedTextStyle: TextStyle(
                                color: Theme.of(context).primaryColorLight,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins"),
                            // selectedColor: Color.fromRGBO(
                            //     15, 15, 190, 1),
                            selectedColor: Theme.of(context).primaryColor,
                            onSelected: (index, isSelected) =>
                                print('$index button is selected'),
                            buttons: [
                              "Male",
                              "Female",
                            ],
                          ),
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
                      Text("Place of Birth",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldWithLessNumber(
                              Name: "Region", hint: "", short: false),
                          TextFieldWithLessNumber(
                              Name: "City", hint: "", short: false),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldWithLessNumber(
                              Name: "Woreda", hint: "", short: true),
                          TextFieldWithLessNumber(
                              Name: "City", hint: "", short: true),
                          TextFieldWithLessNumber(
                              Name: "Region", hint: "", short: true),
                        ],
                      ),
                      TextFieldWithLessNumber(
                          Name: "Sub City", hint: "", short: false),
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
                      Text("Place of Residence",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldWithLessNumber(
                              Name: "Region", hint: "", short: false),
                          TextFieldWithLessNumber(
                              Name: "City", hint: "", short: false),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldWithLessNumber(
                              Name: "Woreda", hint: "", short: true),
                          TextFieldWithLessNumber(
                              Name: "Kebele", hint: "", short: true),
                          TextFieldWithLessNumber(
                              Name: "H.No", hint: "", short: true),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldWithLessNumber(
                              Name: "Postal Code", hint: "", short: false),
                          TextFieldWithLessNumber(
                              Name: "Sub City", hint: "", short: false),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: boxDecoration,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Place of Work",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldWithLessNumber(
                              Name: "Name of institution",
                              hint: "",
                              short: false),
                          TextFieldWithLessNumber(
                              Name: "Job Profession", hint: "", short: false),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldWithLessNumber(
                              Name: "Region", hint: "", short: true),
                          TextFieldWithLessNumber(
                              Name: "City", hint: "", short: true),
                          TextFieldWithLessNumber(
                              Name: "P.O.Box", hint: "", short: true),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldWithLessNumber(
                              Name: "Woreda", hint: "", short: true),
                          TextFieldWithLessNumber(
                              Name: "Kebele", hint: "", short: true),
                          TextFieldWithLessNumber(
                              Name: "H.No", hint: "", short: true),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFieldWithLessNumber(
                              Name: "Work Number", hint: "", short: false),
                          TextFieldWithLessNumber(
                              Name: "Sub City", hint: "", short: false)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: boxDecoration,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Upload CV",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor)),
                      TextFieldWithLessNumber(
                          Name: "Youtube Link", short: false, hint: ""),

                      FileUploadButton()
                      // DropDown(
                      //   items: ["Video", "Youtube link", "Pdf"],
                      //   hint: Text("Type of file"),
                      //   icon: Icon(
                      //     Icons.expand_more,
                      //     color: Colors.blue,
                      //   ),
                      //   onChanged: print,
                      // ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Checkbox(
                    //   checkColor: Colors.greenAccent,
                    //   activeColor: Colors.red,
                    //   value: false,
                    //   onChanged: checkBoxCallBack
                    // ),
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                          print(isChecked);
                        });
                      },
                    ),
                    Text(
                      "I've agreed to the ",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 11,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        _launched = _launchInWebViewOrVC(
                            "https://www.facebook.com/pg/የኢትዮጵያ-ተወዛዋዦች-ጥበብ-ማሕበር-Ethiopian-Dance-Art-Association-445934009270053/photos/");
                      }),
                      child: Text(
                        "Terms and conditions ",
                        style: TextStyle(
                            color: Colors.blue, fontFamily: "Poppins"),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (isChecked == true) {
                    print("can register");
                  } else
                    print("cant");
                },
                child: Container(
                  margin: EdgeInsets.only(top: 40, bottom: 40),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(blurRadius: 0.4, color: Colors.white)
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: isChecked == true ? Color(0xFF082534) : Colors.grey,
                  ),
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Center(
                      child: Text(
                    "Register",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        letterSpacing: 2,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FileUploadButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        var picked = await FilePicker.platform.pickFiles();
        if (picked != null) {
          print(picked.files.first.name);
        }
      },
      child: Container(
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xFF082534), borderRadius: BorderRadius.circular(5)),
        child: Text(
          'UPLOAD FILE',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
