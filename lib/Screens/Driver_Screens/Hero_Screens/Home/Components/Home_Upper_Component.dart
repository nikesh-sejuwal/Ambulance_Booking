import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/StyledBox.dart';
import 'package:flutter/material.dart';

class HomeUpperComponent extends StatelessWidget {
  const HomeUpperComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StyledBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "1 May 2024",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ],
              ),
              Container(
                width: 1,
                height: 50,
                color: Colors.white,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          fontFamily: "Outfit",
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "John Doe",
                      style: TextStyle(
                          fontFamily: "Outfit",
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                width: 1,
                height: 50,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Status",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Available",
                    style: TextStyle(
                        fontFamily: "Outfit",
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.circle,
                      color: Color(0xFF00FF46),
                      size: 10,
                    ),
                    Container(
                      width: 1,
                      height: 26,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.arrow_drop_down_sharp,
                      size: 20,
                    )
                  ],
                ),
                SizedBox(width: 5),
                Column(
                  children: [
                    Text(
                      "Pickup location",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 110,
                      height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ),
                    Text(
                      "Drop location",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 84.4,
              height: 32,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
              child: Center(
                  child: Text(
                'RM 500',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600, color: pColor),
              )),
            )
          ],
        ),
      ],
    ));
  }
}
