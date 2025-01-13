import 'package:flutter/material.dart';

import '../../../Resources/resources.dart';

// Skeleton page

class SkeletonPage extends StatelessWidget {
  final Widget child;
  final Widget? myTopChild;
  final Icon? icon;
  final Color? iconColor;
  final Image? image;
  final String? title;
  final String? subtitle;
  final double? top;
  final double? sizedbox;
  final bool? isLeft;
  const SkeletonPage(
      {super.key,
      required this.child,
      this.icon,
      this.iconColor,
      this.image,
      this.title,
      this.top = 70,
      this.subtitle,
      this.isLeft = false,
      this.sizedbox,
      this.myTopChild});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: pColor,
        child: Stack(
          children: [
            Container(
              child: myTopChild,
            ),
            Positioned(
                top: top,
                child: Container(
                  height: MediaQuery.of(context).size.height - 70,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        icon != null
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 25, left: 10),
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: icon!,
                                      )),
                                ],
                              )
                            : SizedBox.fromSize(
                                size: Size.zero,
                              ),
                        SizedBox(height: sizedbox),
                        title != null && title!.isNotEmpty
                            ? Text(
                                title!,
                                style: titleStyle,
                              )
                            : SizedBox.shrink(),
                        title != null ? SizedBox(height: 5) : SizedBox.shrink(),
                        subtitle != null && subtitle!.isNotEmpty
                            ? Text(subtitle!, style: subtitleStyle)
                            : SizedBox.shrink(),
                        image != null
                            ? Image(
                                height: 186, width: 256, image: image!.image)
                            : SizedBox.shrink(),
                        Center(
                          child: child,
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

// Text Field

class MyTextfield extends StatelessWidget {
  final double? height;
  final double width;
  final Color? color;
  final Widget child;
  final bool? isShadow;

  const MyTextfield(
      {super.key,
      required this.child,
      required this.width,
      this.height = 51,
      this.isShadow = true,
      this.color = textfieldColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color,
            border: isShadow == true
                ? Border()
                : Border.all(color: lightGrey, width: 1),
            borderRadius: isShadow == true
                ? BorderRadius.circular(10)
                : BorderRadius.circular(20),
            boxShadow: [
              isShadow == true
                  ? BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      color: Colors.grey,
                    )
                  : BoxShadow(),
            ]),
        child: child);
  }
}

class MySignupButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;

  const MySignupButton(
      {super.key, required this.title, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: pColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                offset: Offset(4, 10),
                spreadRadius: 0,
                color: greyColor)
          ]),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
      )),
    );
  }
}
