import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/SignUps/Signin_Page/Signin_Page.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Components/OnBoardingData.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/Onboarding_Pages/Login_Page.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final buttonStyles = TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white);

    return Scaffold(
        body: Stack(
      children: [
        PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 3;
            });
          },
          children: [
            OnBoardingPage(
              onboardingImage: Onboardingdata.OnboardingImage1,
              title: Onboardingdata.title1,
              description: Onboardingdata.description1,
            ),
            OnBoardingPage(
              onboardingImage: Onboardingdata.OnboardingImage2,
              title: Onboardingdata.title2,
              description: Onboardingdata.description2,
            ),
            OnBoardingPage(
              onboardingImage: Onboardingdata.OnboardingImage3,
              title: Onboardingdata.title3,
            ),
            LoginPage()
          ],
        ),
        isLastPage
            ? Text('')
            : Positioned(
                bottom: 50,
                left: 25,
                right: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => controller.jumpToPage(3),
                      child: Text(
                        "Skip",
                        style: buttonStyles,
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.nextPage(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Next",
                            style: buttonStyles,
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    )
                  ],
                )),
      ],
    ));
  }
}

class OnBoardingPage extends StatelessWidget {
  final String title, onboardingImage;
  final String? description;
  const OnBoardingPage({
    super.key,
    required this.title,
    required this.onboardingImage,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: AssetImage(onboardingImage)),
          SizedBox(height: 40),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Onboardingdata.titleStyle,
            ),
          ),
          SizedBox(height: 25),
          Container(
            // width: MediaQuery.of(context).size.width * 0.76,

            child: description != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      description!,
                      textAlign: TextAlign.center,
                      style: Onboardingdata.descStyle,
                    ),
                  )
                : Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                            },
                            child: BoxDesign(
                              boxColor: Colors.white,
                              borderColor: pColor,
                              textColor: pColor,
                              shadowColor: Colors.black,
                              title: 'Login',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SigninPage()));
                            },
                            child: BoxDesign(
                              boxColor: pColor,
                              borderColor: Colors.black,
                              textColor: Colors.black,
                              shadowColor: darkRed,
                              title: 'Signup',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

class BoxDesign extends StatelessWidget {
  final Color boxColor, borderColor, textColor, shadowColor;
  final String title;
  const BoxDesign(
      {super.key,
      required this.boxColor,
      required this.borderColor,
      required this.textColor,
      required this.shadowColor,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 140,
        decoration: BoxDecoration(
            color: boxColor,
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: shadowColor,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(15, 20))
            ]),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: 5),
            Text(
              title,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w600, color: textColor),
            ),
            Icon(
              Icons.login,
              color: textColor,
            )
          ],
        )));
  }
}
