import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Login_Page.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/material.dart';

import '../../../../../Resources/resources.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SkeletonPage(
      sizedbox: 20,
      title: "Create an account",
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
                  MyTextfield(
                      width: 248,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 8),
                          Icon(Icons.phone_android_outlined,
                              color: pColor, size: 20),
                          SizedBox(
                            width: 220,
                            child: TextField(
                              maxLines: 1,
                              keyboardType: TextInputType.phone,
                              style: textfieldStyle,
                              decoration: InputDecoration(
                                  hintText: 'Enter your mobile number',
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Password',
                style: headerStyle,
              ),
              SizedBox(height: 15),
              MyTextfield(
                  width: 311,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Icon(Icons.lock_outline, color: pColor, size: 20),
                      SizedBox(
                        width: 230,
                        child: TextField(
                          obscureText: true,
                          style: textfieldStyle,
                          scrollPadding: EdgeInsets.all(100),
                          decoration: InputDecoration(
                              hintText: 'Enter your password',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              border: InputBorder.none),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye_rounded,
                              color: pColor,
                              size: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 20),
              Text(
                'Confirm Password',
                style: headerStyle,
              ),
              SizedBox(height: 15),
              MyTextfield(
                  width: 311,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Icon(Icons.lock_outline, color: pColor, size: 20),
                      SizedBox(
                        width: 230,
                        child: TextField(
                          obscureText: true,
                          style: textfieldStyle,
                          scrollPadding: EdgeInsets.all(100),
                          decoration: InputDecoration(
                              hintText: 'Enter your password',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              border: InputBorder.none),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye_rounded,
                              color: pColor,
                              size: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 45),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: MySignupButton(title: "Sign up", height: 56))
            ],
          )),
    ));
  }
}
