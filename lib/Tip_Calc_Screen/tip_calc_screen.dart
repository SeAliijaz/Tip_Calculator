import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tip_calculator/Widgets/text_widget.dart';

class TipCalculatorScreen extends StatefulWidget {
  static final id = '/TipCalculatorScreen';

  @override
  State<TipCalculatorScreen> createState() => _TipCalculatorScreenState();
}

///Variables
int bill = 0;
double tip = 0.0;
int value = 0;
int number = 0;

class _TipCalculatorScreenState extends State<TipCalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Container(
          height: 100.h,
          width: s.width,
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'images/tiplogo.png',
                  height: 20.h,
                ),
              ),
              Container(
                height: 15.h,
                width: s.width,
                child: Center(
                  child: TextWidget(
                    title: 'Tip-Calculator ',
                    fontsize: 35.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 15.h,
                child: TextField(
                  onChanged: (value) {
                    bill = int.parse(value);
                  },
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.pages,
                    ),
                    hintText: 'Enter Total Bill',
                  ),
                ),
              ),
              Container(
                height: 10.h,
                child: TextWidget(
                  title: 'How many persone are?',
                  fontsize: 30.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 10.h,
                width: 100.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///Bill Split By Persons
                    TextWidget(
                      title: 'Split by Persons',
                      fontsize: 30.5,
                    ),

                    ///Decrement
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (number > 1) number--;
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                    ),

                    ///Numbers
                    Container(
                      height: 10.h,
                      child: Center(
                        child: TextWidget(
                          title: "${number}",
                          fontsize: 30.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    ///Increment
                    IconButton(
                      onPressed: () {
                        setState(() {
                          number++;
                        });
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ),

              ///tip
              Container(
                height: 10.h,
                child: TextWidget(
                  title: 'The Tip is $tip',
                  fontsize: 30.5,
                  fontWeight: FontWeight.bold,
                ),
              ),

              ///Slider
              Container(
                height: 10.h,
                child: Slider(
                  activeColor: Colors.blue,
                  inactiveColor: Colors.red,
                  value: tip,
                  onChanged: (double a) {
                    setState(() {
                      tip = a;
                    });
                  },
                  min: 0,
                  max: 100,
                  divisions: 10,
                ),
              ),

              ///Result
              Container(
                height: 10.h,
                child: TextWidget(
                  title: "The Total Bill is : ${((((bill + tip) / number)))}",
                  fontsize: 35.5,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
