import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_calculator/Tip_Calc_Screen/tip_calc_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) => MaterialApp(
            title: 'Material App',
            debugShowCheckedModeBanner: false,
            home: TipCalculatorScreen(),
          )),
    );
  }
}
