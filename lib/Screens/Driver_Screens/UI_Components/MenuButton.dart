import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/Hero_Screens/History/History_Screen.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/Secondary_Screens/UserData/profile/Profile_Screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuButton extends StatefulWidget {
  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  void _onMenuItemSelected(String value) {
    switch (value) {
      case 'Option 1':
        GoRouter.of(context).go('/profile');
        break;
      case 'Option 2':
        GoRouter.of(context).go('/history');
        break;
      case 'Option 3':
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(backgroundColor: darkRed, content: Text('Logout page')));
        break;
      default:
        print('Unknown option selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: ThemeData(
            popupMenuTheme: PopupMenuThemeData(
              color: Colors.white,
            ),
            primaryColor: Colors.black,
          ),
          child: PopupMenuButton<String>(
            onSelected: _onMenuItemSelected,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20)),
            ),
            constraints: BoxConstraints(minWidth: 200, minHeight: 280),
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
                              color: pColor,
                            )),
                      ],
                    )),
                PopupMenuItem<String>(
                  value: 'Option 1',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.person_2, color: darkRed, size: 25),
                        // SizedBox(width: 10),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: darkRed),
                        ),
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
                        Icon(Icons.history, color: darkRed, size: 25),
                        // SizedBox(width: 10),
                        Text(
                          "History",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: darkRed),
                        ),
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
                        Icon(Icons.logout, color: darkRed, size: 25),
                        // SizedBox(width: 10),
                        Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: darkRed),
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
          ),
        ),
      ],
    );
  }
}
