import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/StyledBox.dart';
import 'package:flutter/material.dart';

class MyAlertDialogue extends StatelessWidget {
  final Widget? child;
  final double height;
  const MyAlertDialogue({super.key, this.child, this.height = 253.0});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: TextTheme(bodyMedium: TextStyle(color: greyColor)),
      ),
      child: AlertDialog(
          backgroundColor: Colors.white,
          content: Container(
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyledBox(
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Live Location",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '06:15 pm',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          indent: 30,
                          endIndent: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Clinic Name",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '06:30 pm',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.av_timer_outlined,
                            size: 28,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Duration',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '15 mins',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 28,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Distance',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '6.5 km',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 20,
                  ),
                  child ?? Container(),
                ],
              ))),
    );
  }
}
