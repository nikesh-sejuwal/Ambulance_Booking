import 'package:flutter/material.dart';

import '../../../../../../Resources/resources.dart';
import '../../../../Onboarding_Pages/Login_Page.dart';
import '../Profile.dart';

class ProfileBtns extends StatelessWidget {
  const ProfileBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Profile(isEdit: true),
              ));
            },
            child: Container(
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
