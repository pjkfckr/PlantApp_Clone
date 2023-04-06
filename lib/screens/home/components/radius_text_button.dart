import 'package:flutter/material.dart';
import 'package:speed_code/constants.dart';

class RadiusTextButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double radius;

  const RadiusTextButton({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
