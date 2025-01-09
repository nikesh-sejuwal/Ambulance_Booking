import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/SignUps/OTP_Verification/verification.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Components/OnBoardingData.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/material.dart';

class Forget extends StatelessWidget {
  const Forget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SkeletonPage(
          isLeft: true,
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: pColor,
          ),
          title: 'Forgot Password',
          subtitle: 'Enter your mobile number to reset password',
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
                SizedBox(height: 45),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Verification()));
                    },
                    child: MySignupButton(title: "Next", height: 56))
              ],
            ),
          )),
    );
  }
}
