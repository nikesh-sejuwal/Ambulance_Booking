import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/Bottom_NavBar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Resources/resources.dart';
import 'components/Profile_Buttton.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var borderStyle = OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.black45),
        borderRadius: BorderRadius.circular(20));
    var hintstyle = TextStyle(fontSize: 16, color: Colors.grey);
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        body: Container(
          color: pColor,
          child: Stack(children: [
            Column(
              children: [
                // SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            GoRouter.of(context).go('/');
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 70),
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              children: [
                                SizedBox(height: 5),
                                TextField(
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  cursorColor: Colors.black,
                                  scrollPadding: EdgeInsets.all(20),
                                  decoration: InputDecoration(
                                    border: borderStyle,
                                    enabledBorder: borderStyle,
                                    focusedBorder: borderStyle,
                                    hintText: "John Doe",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    hintStyle: hintstyle,
                                    labelStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                    labelText: "Name",
                                  ),
                                ),
                                SizedBox(height: 25),
                                TextField(
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: borderStyle,
                                    enabledBorder: borderStyle,
                                    focusedBorder: borderStyle,
                                    hintText: "+60-123456789",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    hintStyle: hintstyle,
                                    labelStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                    labelText: "Phone",
                                  ),
                                ),
                                SizedBox(height: 25),
                                TextField(
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: borderStyle,
                                    enabledBorder: borderStyle,
                                    focusedBorder: borderStyle,
                                    hintText: "Kuala Lampur",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    hintStyle: hintstyle,
                                    labelStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                    labelText: "Address",
                                  ),
                                ),
                                SizedBox(height: 25),
                                TextField(
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  obscureText: true,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: borderStyle,
                                    enabledBorder: borderStyle,
                                    focusedBorder: borderStyle,
                                    hintText: "******",
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
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
                                SizedBox(height: 40),
                                ProfileButtons(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: SizedBox(
                    height: 139,
                    width: 139,
                    child: Image.asset('assets/images/Avatar.png')),
              ),
            ),
          ]),
        ),
        // bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}
