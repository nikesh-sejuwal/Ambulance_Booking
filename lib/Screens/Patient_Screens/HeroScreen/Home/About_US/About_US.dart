import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/stackSkeleton.dart';

import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideLeftAnimation;
  late Animation<Offset> slideRightAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    slideRightAnimation =
        Tween<Offset>(begin: Offset(-0.2, 0), end: Offset.zero)
            .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
    slideLeftAnimation = Tween<Offset>(begin: Offset(0.2, 0), end: Offset.zero)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stackskeleton(
      top: 80,
      upperChild: Padding(
        padding: const EdgeInsets.only(top: 70, left: 10),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              Text(
                'About Us',
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 15),
            ],
          ),
        ),
      ),
      stackChild: Container(
        margin: EdgeInsets.only(top: 135),
        height: 116,
        width: 116,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: Colors.black),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  color: Colors.black),
            ],
            borderRadius: BorderRadius.circular(100)),
        child: Image(image: AssetImage('assets/images/logo1.png')),
      ),
      lowerChild: Column(
        children: [
          SizedBox(height: 95),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SlideTransition(
                  position: slideRightAnimation,
                  child: AboutBox(
                    title: 'Vision Statement',
                    subtitle:
                        'Our vision is to be one of the leading dental clinic in the area, expanding our services to reach additional community members. We work to be trusted by patients, a valued partner in the community.',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SlideTransition(
                  position: slideLeftAnimation,
                  child: AboutBox(
                    title: 'Mission Statement',
                    subtitle:
                        'It is our mission to exceed expectations by providing exceptional dental care to our patients and at the same time, building relationships of trust with them.',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class AboutBox extends StatelessWidget {
  final String title, subtitle;
  const AboutBox({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 190,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 2, color: Color(0xFFFFC1C1)),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontFamily: "Roboto",
                color: darkRed,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
