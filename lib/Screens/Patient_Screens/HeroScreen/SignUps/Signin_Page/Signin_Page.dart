import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/SignUps/OTP_Verification/verification.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Components/OnBoardingData.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/Custom_TextField.dart';

import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Resources/resources.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SkeletonPage(
      sizedbox: 57,
      title: 'Join us via phone number',
      subtitle: "We’ll text a code to verify your phone",
      image: Image.asset(Onboardingdata.OnboardingImage3),
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
                  SizedBox(width: 10),
                  CustomTextField(
                    hintText: "Enter your mobile number",
                    keyboardType: TextInputType.phone,
                    icon: Icons.phone_android,
                    topWidth: 0.64,
                    secondWidth: 0.54,
                  )
                ],
              ),
              SizedBox(height: 45),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => Verification()));
                  },
                  child: MySignupButton(title: "Next", height: 56))
            ],
          ),
        ),
      ),
    ));
  }
}
