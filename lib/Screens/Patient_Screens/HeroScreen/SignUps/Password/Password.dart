import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Login_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Resources/resources.dart';
import '../../../widget/Custom_TextField.dart';
import '../../../widget/textfield.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SkeletonPage(
      sizedbox: 20,
      title: "Create an account",
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Mobile",
                  style: headerStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    MyTextfield(
                      width: 53,
                      child: Center(
                        child: Text('+60', style: textfieldStyle),
                      ),
                    ),
                    SizedBox(width: 15),
                    CustomTextField(
                        topWidth: 0.61,
                        secondWidth: 0.5,
                        keyboardType: TextInputType.phone,
                        hintText: "Enter your mobile number",
                        icon: Icons.phone_android)
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Password',
                  style: headerStyle,
                ),
                SizedBox(height: 15),
                CustomTextField(
                  hintText: 'Enter your password',
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),
                SizedBox(height: 20),
                Text(
                  'Confirm Password',
                  style: headerStyle,
                ),
                SizedBox(height: 15),
                CustomTextField(
                  hintText: 'Enter your password',
                  icon: Icons.lock_outline,
                  obscureText: true,
                ),
                SizedBox(height: 45),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(CupertinoPageRoute(
                          builder: (context) => LoginPage()));
                    },
                    child: MySignupButton(title: "Sign up", height: 56))
              ],
            )),
      ),
    ));
  }
}
