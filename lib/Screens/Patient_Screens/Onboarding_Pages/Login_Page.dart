import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/Home/List_Clinics/List_Clinic.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/SignUps/Forget_Password/Forget.dart';

import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/SignUps/Signin_Page/Signin_Page.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Components/OnBoardingData.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/Custom_TextField.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/cupertino.dart';
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                    CustomTextField(
                      hintText: "Enter your mobile number",
                      icon: Icons.phone_android,
                      topWidth: 0.64,
                      keyboardType: TextInputType.phone,
                      secondWidth: 0.54,
                    )
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  'Password',
                  style: headerStyle,
                ),
                SizedBox(height: 10),
                CustomTextField(
                  hintText: "Enter your password",
                  icon: Icons.lock,
                  obscureText: true,
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            CupertinoPageRoute(builder: (context) => Forget()));
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
                        CupertinoPageRoute(builder: (context) => ListClinic()));
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
                      "Don't have an account?",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                            CupertinoPageRoute(
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
      ),
    );
  }
}
