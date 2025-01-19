import 'package:ambulance_booking/Resources/resources.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SkeletonPage(
            sizedbox: 30,
            child: Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: Icon(Icons.arrow_back, size: 30)),
                          Text("Feedback", style: titleStyle),
                          SizedBox(width: 15)
                        ],
                      ),
                      SizedBox(height: 30),

                      // Name Textfield
                      Text(
                        "Name",
                        style: headerStyle,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 10),
                      MyTextfield(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextField(
                            style: textfieldStyle,
                            decoration: InputDecoration(
                                hintText: 'Enter your name',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 24),
                                border: InputBorder.none),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      // Name Textfield
                      Text(
                        "Email",
                        style: headerStyle,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 10),
                      MyTextfield(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextField(
                            style: textfieldStyle,
                            decoration: InputDecoration(
                                hintText: 'Enter your email',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 24),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Name Textfield
                      Text(
                        "Share your experience",
                        style: headerStyle,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          for (var i = 0; i < 5; i++)
                            Icon(
                              i < 3 ? Icons.star : Icons.star_border,
                              size: 35,
                              color: i < 3 ? Colors.amber : Colors.grey,
                            )
                        ],
                      ),
                      SizedBox(height: 30),
                      MyTextfield(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 145,
                        child: TextField(
                          style: textfieldStyle,
                          maxLines: 6,
                          decoration: InputDecoration(
                              hintText: 'Add your comments...',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 15)),
                        ),
                      ),
                      SizedBox(height: 30),
                      MySignupButton(
                        title: "Submit",
                        height: 56,
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
