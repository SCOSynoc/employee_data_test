import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.fontSize, required this.wtg, required this.color, required this.text}) : super(key: key);
  final double fontSize;
  final FontWeight wtg;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Text(text, style: GoogleFonts.roboto(fontSize: fontSize, fontWeight: wtg , color: color,  ),
      textScaler: TextScaler.linear(width <= 320 ? 0.7: width <= 344 ? 0.75 :0.9), );
  }
}

