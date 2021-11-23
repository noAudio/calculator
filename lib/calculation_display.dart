import 'package:flutter/material.dart';

class CalculationDisplay extends StatelessWidget {
  const CalculationDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: const [
          CalculationHistory(),
          Display(),
        ],
      ),
    );
  }
}

class Display extends StatelessWidget {
  const Display({
    Key? key,
  }) : super(key: key);

  final String typedValues = '0';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Text(
        typedValues,
        style: const TextStyle(
          fontSize: 100,
        ),
      ),
    );
  }
}

class CalculationHistory extends StatelessWidget {
  const CalculationHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      alignment: Alignment.bottomRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Calculation(calculation: '1+1=2'),
          Calculation(calculation: '4x3=12'),
          Calculation(calculation: '8-8=0'),
          Calculation(calculation: '10÷2=5'),
          Calculation(calculation: '11+12=23'),
        ],
      ),
    );
  }
}

class Calculation extends StatelessWidget {
  const Calculation({
    Key? key,
    required this.calculation,
  }) : super(key: key);

  final String calculation;

  @override
  Widget build(BuildContext context) {
    return Text(
      calculation,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 25,
      ),
    );
  }
}
