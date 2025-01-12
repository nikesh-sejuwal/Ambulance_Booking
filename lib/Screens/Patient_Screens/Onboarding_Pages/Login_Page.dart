import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/Home/List_Clinics/List_Clinic.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/SignUps/Forget_Password/Forget.dart';

import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/SignUps/Signin_Page/Signin_Page.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Components/OnBoardingData.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SkeletonPage(
        title: 'Welcome Back!',
        subtitle: 'Let’s login for explore continues',
        sizedbox: 57,
        image: Image.asset(Onboardingdata.OnboardingImage3),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  SizedBox(width: 10),
                  MyTextfield(
                      width: 248,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 8),
                          Icon(Icons.phone_android_outlined,
                              color: pColor, size: 20),
                          SizedBox(
                            width: 210,
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
                      ))
                ],
              ),
              SizedBox(height: 25),
              Text(
                'Password',
                style: headerStyle,
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Forget()));
                    },
                    child: Text(
                      "Forgot password",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: pColor),
                    ),
                  ),
                  SizedBox(width: 20)
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => ListClinic()));
                },
                child: MySignupButton(
                  title: "Login",
                  height: 56,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SigninPage()));
                    },
                    child: Text(
                      'Sign Up here',
                      style: TextStyle(
                          color: pColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
