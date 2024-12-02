import 'package:flutter/material.dart';
import 'widget/main_calcul.dart';

class MainCalculator extends StatefulWidget {
  const MainCalculator({super.key});
  // const MainCalculator({super.key});
  @override
  _MainCalculatorState createState() => _MainCalculatorState();
}

class _MainCalculatorState extends State<MainCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainCal(),
    );
  }
}
