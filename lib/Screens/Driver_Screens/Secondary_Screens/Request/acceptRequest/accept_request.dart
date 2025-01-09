import 'package:ambulance_booking/Screens/Driver_Screens/Hero_Screens/Home/Home_Screen.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/Bottom_NavBar.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/MenuButton.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/StyledBox.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Resources/resources.dart';
import '../../../UI_Components/My_Alert_Dialogue.dart';

class AcceptRequest extends StatefulWidget {
  const AcceptRequest({super.key});

  @override
  State<AcceptRequest> createState() => _AcceptRequestState();
}

class _AcceptRequestState extends State<AcceptRequest> {
  int current_page = 1;

  void changeOnTap(int index) {
    setState(() {
      current_page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        body: Container(
          color: pColor,
          child: Column(
            children: [
              // SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        )),
                    Text(
                      'Request',
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    MenuButton()
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/googleMap.png',
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 333,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                top: BorderSide(width: 1, color: pColor),
                                left: BorderSide(width: 1, color: pColor),
                                right: BorderSide(width: 1, color: pColor),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.close,
                                        color: pColor,
                                      )),
                                  SizedBox(width: 15),
                                ],
                              ),
                              StyledBox(
                                  height: 112,
                                  width: 0.8,
                                  color: Colors.white,
                                  blurRadius: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              color: Color(0xFF00FF46),
                                              size: 10,
                                            ),
                                            Container(
                                              width: 1,
                                              height: 30,
                                              color: Colors.black,
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_sharp,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                        SizedBox(width: 3),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "From:",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "Live location",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            // SizedBox(height: 10),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              height: 1,
                                              color: Colors.black,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "To:",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                SizedBox(width: 30),
                                                Text(
                                                  "Clinic Name",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(height: 20),
                              StyledBox(
                                  height: 60,
                                  width: 0.8,
                                  color: Colors.white,
                                  blurRadius: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.info_outline_rounded),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Text(
                                              'The recommended fare is RM 1000. Travel time ~ 30 min',
                                              overflow: TextOverflow.fade,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              backgroundColor: darkRed,
                                              content: Text(
                                                  'Request accept successfully')));
                                      GoRouter.of(context).go('/');
                                    },
                                    child: Container(
                                      width: 148,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: pColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Center(
                                        child: Text(
                                          'Start',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          barrierColor: backColor,
                                          builder: (context) => MyAlertDialogue(
                                                child: Row(
                                                  children: [
                                                    SizedBox(width: 25),
                                                    Icon(
                                                      Icons.payment,
                                                      size: 28,
                                                      color: Colors.grey,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'RM 500',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )
                                                  ],
                                                ),
                                              ));
                                    },
                                    child: Container(
                                      width: 148,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: pColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Center(
                                        child: Text(
                                          'End',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}
