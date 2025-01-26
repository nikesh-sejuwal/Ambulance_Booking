import 'package:flutter/material.dart';

import '../../../Resources/resources.dart';

// Skeleton page

class SkeletonPage extends StatefulWidget {
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
  State<SkeletonPage> createState() => _SkeletonPageState();
}

class _SkeletonPageState extends State<SkeletonPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideDownAnimation;
  late Animation<Offset> slideRightAnimation;
  late Animation<double> fadeinAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    slideDownAnimation = Tween<Offset>(begin: Offset(0, -0.4), end: Offset.zero)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
    fadeinAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));
    controller.forward();
  }

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
              child: widget.myTopChild,
            ),
            Positioned(
                top: widget.top,
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
                        widget.icon != null
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
                                        icon: widget.icon!,
                                      )),
                                ],
                              )
                            : SizedBox.fromSize(
                                size: Size.zero,
                              ),
                        SizedBox(height: widget.sizedbox),
                        widget.title != null && widget.title!.isNotEmpty
                            ? SlideTransition(
                                position: slideDownAnimation,
                                child: Text(
                                  widget.title!,
                                  style: titleStyle,
                                ),
                              )
                            : SizedBox.shrink(),
                        widget.title != null
                            ? SizedBox(height: 5)
                            : SizedBox.shrink(),
                        widget.subtitle != null && widget.subtitle!.isNotEmpty
                            ? SlideTransition(
                                position: slideDownAnimation,
                                child: Text(widget.subtitle!,
                                    style: subtitleStyle))
                            : SizedBox.shrink(),
                        widget.image != null
                            ? FadeTransition(
                                opacity: fadeinAnimation,
                                child: Image(
                                    height: 186,
                                    width: 256,
                                    image: widget.image!.image),
                              )
                            : SizedBox.shrink(),
                        Center(
                          child: widget.child,
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

class MyTextfield extends StatefulWidget {
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
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> fadeinAnimation;
  late Animation<Offset> slideRightAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    fadeinAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeinAnimation,
      child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
              color: widget.color,
              border: widget.isShadow == true
                  ? Border()
                  : Border.all(color: lightGrey, width: 1),
              borderRadius: widget.isShadow == true
                  ? BorderRadius.circular(10)
                  : BorderRadius.circular(20),
              boxShadow: [
                widget.isShadow == true
                    ? BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        color: Colors.grey,
                      )
                    : BoxShadow(),
              ]),
          child: widget.child),
    );
  }
}

class MySignupButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;

  const MySignupButton({
    super.key,
    required this.title,
    this.height,
    this.width,
  });

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
              color: greyColor,
            )
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
