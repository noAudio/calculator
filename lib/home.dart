import 'package:calculator/button_area.dart';
import 'package:calculator/calculation_display.dart';
import 'package:calculator/theme_switcher.dart';
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
              const ThemeSwicther(),
              const CalculationDisplay(),
              const ButtonArea(),
            ],
          ),
        ),
      ),
    );
  }
}
