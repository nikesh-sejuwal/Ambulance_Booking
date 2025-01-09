import 'package:ambulance_booking/Resources/resources.dart';
import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 166.5,
            height: 55,
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
                  SizedBox(width: 10),
                  Icon(Icons.note_alt_outlined, color: Colors.white, size: 30)
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          Container(
            width: 152,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(width: 2, color: pColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 5),
                  Text(
                    'Log out',
                    style: TextStyle(
                        color: pColor,
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.logout, color: pColor, size: 30)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
