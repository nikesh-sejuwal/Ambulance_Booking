import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Route/app.route.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Onboarding_Screen.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp.router(
//     theme: ThemeData(
//         useMaterial3: true,
//         fontFamily: "OpenSans",
//         shadowColor: Colors.red,
//         scaffoldBackgroundColor: Colors.white),
//     debugShowCheckedModeBanner: false,
//     routerConfig: appRouter,
//   ));
// }

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        useMaterial3: true,
        fontFamily: "OpenSans",
        shadowColor: Colors.red,
        scaffoldBackgroundColor: Colors.white),
    debugShowCheckedModeBanner: false,
    home: OnBoarding(),
  ));
}
