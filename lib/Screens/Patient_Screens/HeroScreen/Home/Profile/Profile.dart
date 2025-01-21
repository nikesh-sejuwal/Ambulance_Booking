import 'package:ambulance_booking/Screens/Patient_Screens/HeroScreen/Home/List_Clinics/List_Clinic.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/Custom_TextField.dart';
import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/material.dart';
import '../../../widget/stackSkeleton.dart';
import 'Components/Profile_Btns.dart';

class Profile extends StatelessWidget {
  final bool? isEdit;
  const Profile({super.key, this.isEdit = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stackskeleton(
        // Stack Child

        stackChild: Container(
          margin: EdgeInsets.only(top: 89),
          child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/Avatar.png')),
        ),

        // Upper Child

        upperChild: Padding(
          padding: const EdgeInsets.only(top: 67),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          ),
        ),

        // LowerChild

        lowerChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            (isEdit == true)
                ? Center(
                    child: Text(
                    "Change Picture",
                    style: TextStyle(color: Colors.grey.shade600),
                  ))
                : Text(''),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  SizedBox(height: 35),
                  Custom_Profile_Textfield(
                      hintText: "John Doe", labelText: "Name"),
                  SizedBox(height: 40),
                  Custom_Profile_Textfield(
                    hintText: "+60-123456789",
                    labelText: "Phone",
                    isPhone: true,
                  ),
                  SizedBox(height: 40),
                  Custom_Profile_Textfield(
                      hintText: "Kuala Lampur", labelText: "Address"),
                  SizedBox(height: 40),
                  Custom_Profile_Textfield(
                    hintText: "*****",
                    labelText: "Password",
                    isIcon: true,
                  ),
                  SizedBox(height: 50),
                  (isEdit == false)
                      ? ProfileBtns()
                      : GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => ListClinic()));
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Colors.green,
                                content: Text("Updated Successfully")));
                          },
                          child: MySignupButton(
                            title: "Update",
                            height: 56,
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    // bottomNavigationBar: BottomNavbar(),
  }
}
