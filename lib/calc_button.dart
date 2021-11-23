import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    Key? key,
    this.buttonHeight,
    required this.backgroundColor,
    required this.textColor,
    required this.buttonValue,
  }) : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final String buttonValue;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: (buttonHeight != null) ? buttonHeight : 60,
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonValue,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
