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

class Custom_Profile_Textfield extends StatelessWidget {
  final String hintText, labelText;
  final bool isIcon, isPhone;
  const Custom_Profile_Textfield({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isIcon = false,
    this.isPhone = false,
  });

  @override
  Widget build(BuildContext context) {
    var borderStyle = OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.black45),
        borderRadius: BorderRadius.circular(20));
    var hintstyle = TextStyle(fontSize: 16, color: Colors.grey);
    return TextField(
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      cursorColor: Colors.black,
      obscureText: isIcon == true ? true : false,
      keyboardType: isPhone == true ? TextInputType.phone : TextInputType.name,
      decoration: InputDecoration(
        border: borderStyle,
        enabledBorder: borderStyle,
        focusedBorder: borderStyle,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        hintStyle: hintstyle,
        labelStyle: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(labelText),
            SizedBox(width: 5),
            isIcon == true ? Icon(Icons.lock, size: 16) : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
