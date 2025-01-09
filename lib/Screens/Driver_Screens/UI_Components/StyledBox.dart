import 'package:flutter/material.dart';

class StyledBox extends StatelessWidget {
  final Widget child;
  final double height;
  final Color color;
  final int blurRadius;
  final double width;
  final double borderRadius;
  StyledBox({
    required this.child,
    this.height = 170,
    this.width = 0.9,
    this.color = const Color(0xD90EAD69),
    this.blurRadius = 5,
    this.borderRadius = 15,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width * width,
        decoration: BoxDecoration(
          color: color,
          boxShadow: [
            BoxShadow(
              blurRadius: blurRadius.toDouble(),
              offset: Offset(1, 1),
              spreadRadius: 2,
              color: Colors.grey.shade400,
            )
          ],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
      ),
    );
  }
}
