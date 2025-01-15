import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ambulance_booking/Resources/resources.dart';
import 'package:go_router/go_router.dart';

class BottomNavbar extends StatelessWidget {
  final StatefulNavigationShell shell;

  const BottomNavbar({Key? key, required this.shell}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: shell,
      bottomNavigationBar: CurvedNavigationBar(
        letIndexChange: (index) {
          if (shell.currentIndex == index) {
            // Reset to the root route of the selected tab
            switch (index) {
              case 0:
                GoRouter.of(context).go("/");
                break;
              case 1:
                GoRouter.of(context).go("/sos");
                break;
              case 2:
                GoRouter.of(context).go("/history");
                break;
              default:
                break;
            }
          } else {
            // Navigate to the selected tab
            shell.goBranch(index);
          }
          return false; // Prevent CurvedNavigationBar's internal index change
        },
        index: 1,
        height: 60,
        backgroundColor: Colors.white,
        color: pColor,
        items: [
          Icon(
            Icons.home_filled,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            Icons.sos,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            Icons.history,
            color: Colors.white,
            size: 25,
          ),
        ],
      ),
    );
  }
}
