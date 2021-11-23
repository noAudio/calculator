import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(title: 'Calculator'),
    );
  }
}

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
