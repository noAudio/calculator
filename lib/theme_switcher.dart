import 'package:calculator/theme_button.dart';
import 'package:flutter/material.dart';

class ThemeSwicther extends StatelessWidget {
  const ThemeSwicther({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ThemeButton(
              icon: Icons.light_mode,
            ),
            ThemeButton(
              icon: Icons.dark_mode,
            ),
          ],
        ),
      ),
    );
  }
}
