import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/SignUps/Password/password.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/material.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SkeletonPage(
          // sizedbox: 110,
          isLeft: true,
          icon: Icon(
            Icons.arrow_back,
            color: pColor,
            size: 30,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.82,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Verification Code", style: titleStyle),
                SizedBox(height: 5),
                Text("We have sent the verification code to your mobile number",
                    style: subtitleStyle),
                SizedBox(height: 55),
                Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: MyTextfield(
                          width: 71,
                          height: 71,
                          isShadow: false,
                          color: Colors.white,
                          child: Container(
                            child: Center(child: Text("")),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 55),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Password()));
                    },
                    child: MySignupButton(title: 'Submit', height: 56)),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn’t receive OTP? ",
                    ),
                    InkWell(
                      child: Text(
                        "Resend",
                        style: TextStyle(color: pColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
