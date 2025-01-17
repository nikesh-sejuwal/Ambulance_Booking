import 'package:ambulance_booking/Screens/Patient_Screens/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:ambulance_booking/Resources/resources.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;
  final double? topWidth;
  final double? secondWidth;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.topWidth = 0.79,
    this.secondWidth = 0.59,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyTextfield(
      width: MediaQuery.of(context).size.width * topWidth!,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 8),
          Icon(icon, color: pColor, size: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * secondWidth!,
            child: TextField(
              obscureText: obscureText,
              keyboardType: keyboardType,
              style: textfieldStyle,
              decoration: InputDecoration(
                hintText: hintText,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
              ),
            ),
          ),
          if (obscureText)
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.remove_red_eye_rounded,
                color: pColor,
                size: 20,
              ),
            ),
        ],
      ),
    );
  }
}
