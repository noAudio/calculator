import 'package:calculator/calc_button.dart';
import 'package:calculator/theme_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;
  const Home({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '7',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '4',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '1',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '0',
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '8',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '5',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '2',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '.',
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '9',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '6',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '3',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '%',
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '÷',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: 'x',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '-',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '+',
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: 'Del',
                      ),
                      SizedBox(height: 15),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: 'Ac',
                      ),
                      SizedBox(height: 10),
                      CalcButton(
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                        buttonValue: '=',
                        buttonHeight: 140,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
