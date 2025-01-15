import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/My_Alert_Dialogue.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Login_Page.dart';
import 'package:flutter/material.dart';

import '../../../../../Resources/resources.dart';
import '../../../widget/stackSkeleton.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var borderStyle = OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.black45),
        borderRadius: BorderRadius.circular(20));
    var hintstyle = TextStyle(fontSize: 16, color: Colors.grey);
    return Scaffold(
      body: Stackskeleton(
        // Stack Child

        stackChild: Container(
          margin: EdgeInsets.only(top: 89),
          child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/Avatar.png')),
        ),

        // Upper Child

        upperChild: Padding(
          padding: const EdgeInsets.only(top: 67),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          ),
        ),

        // LowerChild

        lowerChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  SizedBox(height: 5),
                  TextField(
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    cursorColor: Colors.black,
                    scrollPadding: EdgeInsets.all(20),
                    decoration: InputDecoration(
                      border: borderStyle,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      hintText: "John Doe",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      hintStyle: hintstyle,
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      labelText: "Name",
                    ),
                  ),
                  SizedBox(height: 40),
                  TextField(
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: borderStyle,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      hintText: "+60-123456789",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      hintStyle: hintstyle,
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      labelText: "Phone",
                    ),
                  ),
                  SizedBox(height: 40),
                  TextField(
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: borderStyle,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      hintText: "Kuala Lampur",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      hintStyle: hintstyle,
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      labelText: "Address",
                    ),
                  ),
                  SizedBox(height: 40),
                  TextField(
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: borderStyle,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      hintText: "******",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      hintStyle: hintstyle,
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      label: Row(
                        children: [
                          Text("Password"),
                          SizedBox(width: 5),
                          Icon(Icons.lock, size: 16),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  ProfileBtns(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // bottomNavigationBar: BottomNavbar(),
  }
}

class ProfileBtns extends StatelessWidget {
  const ProfileBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 166.5,
            height: 57,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 5),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 18),
                  Icon(Icons.note_alt_outlined, color: Colors.white, size: 30)
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              showDialog(
                  barrierColor: backColor,
                  context: context,
                  builder: (context) => AlertDialog(
                        backgroundColor: Colors.white,
                        content: Container(
                          height: 201,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 5),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Color(0x36DF8188),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(
                                  Icons.error,
                                  color: pColor,
                                  size: 25,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Delete Account",
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'You are going to delete the account permanently.',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Are you sure?',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.of(context).pop(),
                                    child: Container(
                                      width: 98,
                                      height: 37,
                                      decoration: BoxDecoration(
                                          color: Color(0x248C8A8A),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text(
                                        "No, Keep it.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor: darkRed,
                                              content: Text(
                                                  "Account Deleted  Successfully!"))),
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginPage()))
                                    },
                                    child: Container(
                                      width: 98,
                                      height: 37,
                                      decoration: BoxDecoration(
                                          color: pColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text(
                                        "Yes, Delete!",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ));
            },
            child: Container(
              width: 153,
              height: 57,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 2, color: pColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(width: 5),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Delete',
                          style: TextStyle(
                              color: pColor,
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                              color: pColor,
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.person_off_outlined, color: pColor, size: 30)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
