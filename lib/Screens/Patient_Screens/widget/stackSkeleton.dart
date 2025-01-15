import 'package:flutter/material.dart';

import '../../../../../Resources/resources.dart';

class Stackskeleton extends StatelessWidget {
  final Widget upperChild, lowerChild, stackChild;
  final double? top;
  const Stackskeleton({
    super.key,
    required this.upperChild,
    required this.lowerChild,
    required this.stackChild,
    this.top = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pColor,
      child: Stack(children: [
        Column(
          children: [
            // SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [upperChild],
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: top!),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45))),
                    child: lowerChild),
              ),
            ),
          ],
        ),
        Align(alignment: Alignment.topCenter, child: stackChild),
      ]),

      // bottomNavigationBar: BottomNavbar(),
    );
  }
}
