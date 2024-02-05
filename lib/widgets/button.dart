import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {required this.label,
      required this.callback,
      required this.buttonColor,
      required this.borderColor,
      required this.style,
      required this.height,
      required this.width,
      required this.radius,
      super.key,});
  final String label;
  final VoidCallback callback;
  final Color buttonColor;
  final Color borderColor;
  final TextStyle style;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        child: Center(
          child: Text(label, style: style),
        ),
      ),
    );
  }
}
