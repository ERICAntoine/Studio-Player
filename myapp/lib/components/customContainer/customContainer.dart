import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget
{
  CustomContainer({@required this.child});
  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black,
            Colors.black,
            Colors.black12,
            Colors.white24,
          ],
        ),
      ),
      child: child
    );
  }
}