import 'package:calculator/button_area.dart';
import 'package:calculator/calculation_display.dart';
import 'package:calculator/theme_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;
  final bool isLightMode = true;
  const Home({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: const Color(0xFFF2F4F5),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(),
              ),
              Padding(
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
              ),
              const CalculationDisplay(),
              const ButtonArea(),
            ],
          ),
        ),
      ),
    );
  }
}
