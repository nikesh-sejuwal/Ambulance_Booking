import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/Home/About_US/About_US.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/Home/Feedback/feedback.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/Home/List_Clinics/List_Clinic.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/Home/Profile/Profile.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Login_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final TextStyle DrawerTextStyle =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: darkRed);

  void _onDrawerSelected(String value) {
    switch (value) {
      case 'Option 1':
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => ListClinic()));
        break;
      case 'Option 2':
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => AboutUs()));
        break;
      case 'Option 3':
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => Profile()));
        break;
      case 'Option 4':
        print('Option 4 clicked');
        break;
      case 'Option 5':
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => FeedbackPage()));
        break;
      case 'Option 6':
        Navigator.of(context).pushReplacement(
            CupertinoPageRoute(builder: (context) => LoginPage()));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: darkRed, content: Text("Logout Successfully")));
        break;
      default:
        print('Unknown option selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Theme(
            data: ThemeData(
              popupMenuTheme: PopupMenuThemeData(
                color: Colors.white,
              ),
              primaryColor: Colors.black,
            ),
            child: PopupMenuButton<String>(
              onSelected: _onDrawerSelected,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              constraints: BoxConstraints(
                minWidth: 242,
                minHeight: 263,
              ),
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 28,
              ),
              offset: Offset(60, 40),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: 'close',
                    enabled: false,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.close,
                            size: 30,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.home_filled, color: darkRed, size: 25),
                          Text("Home", style: DrawerTextStyle),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.error, color: darkRed, size: 25),
                          Text("About", style: DrawerTextStyle),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.person, color: darkRed, size: 25),
                          Text("Profile", style: DrawerTextStyle),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 4',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.history_rounded, color: darkRed, size: 25),
                          Text("History", style: DrawerTextStyle),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 5',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.feedback, color: darkRed, size: 20),
                          Text("FeedBack", style: DrawerTextStyle),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 6',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.logout_outlined, color: darkRed, size: 25),
                          Text("Logout", style: DrawerTextStyle),
                        ],
                      ),
                    ),
                  ),
                ];
              },
            ),
          ),
        ],
      ),
    );
  }
}
