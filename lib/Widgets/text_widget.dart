import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  ///Vars
  String title;
  double fontsize;
  FontWeight fontWeight;

  TextWidget({
    this.title,
    this.fontsize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '${title}',
      textAlign: TextAlign.center,
      style: GoogleFonts.lateef(
        textStyle: TextStyle(
          fontSize: fontsize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
