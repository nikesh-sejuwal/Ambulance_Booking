import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/MenuButton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'Components/Home_Lower_Component.dart';
import 'Components/Home_Upper_Component.dart';

class HomeScreen extends StatefulWidget {
  final String? route;
  const HomeScreen({super.key, this.route});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Driver Panel',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Roboto",
                          color: Colors.white),
                    ),
                    MenuButton()
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Today's Requests",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                          onTap: () {
                            if (widget.route != null) {
                              context.push(widget.route!);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Colors.grey,
                                      content:
                                          Text("No Further page defined")));
                            }
                          },
                          child: HomeUpperComponent()),
                      SizedBox(height: 40),
                      GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: greyColor,
                                content: Text('Already reserved')));
                          },
                          child: HomeLowerComponent())
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
