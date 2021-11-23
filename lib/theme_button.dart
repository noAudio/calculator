import 'package:flutter/material.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  bool isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          if (widget.icon == Icons.light_mode) {
            isLightMode = true;
          } else {
            isLightMode = false;
          }
        });
      },
      child: Icon(
        widget.icon,
        color: setIconColour(),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }

  Color setIconColour() {
    if (widget.icon == Icons.light_mode) {
      if (isLightMode) {
        return Colors.black;
      } else {
        return Colors.grey;
      }
    } else {
      if (isLightMode) {
        return Colors.grey;
      } else {
        return Colors.white;
      }
    }
  }
}
