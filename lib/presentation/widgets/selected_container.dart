import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/utils.dart';
import 'common_text_widget.dart';

class DropdownContainer extends StatelessWidget {
  const DropdownContainer({Key? key, required this.label, required this.prefixIcon, this.suffixIcon, required this.from}) : super(key: key);
  final String label;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final String from;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        filled: true,
        helperMaxLines: 1,
        fillColor: Colors.white70,
        contentPadding: EdgeInsets.zero,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: FittedBox(
            fit: BoxFit.scaleDown,
            child: suffixIcon),
        prefixIcon: FittedBox(
            fit: BoxFit.scaleDown,
            child: prefixIcon),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textFieldBorderColor),
          borderRadius: BorderRadius.circular(4.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textFieldBorderColor),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: SizedBox(
        width: 78,
        child: TextWidget(
          fontSize: getDropTextFont(from),
          wtg: FontWeight.w400,
          color: label.isEmpty? appSecondaryFontColor : appFontPrimaryColor,
          text: label.isEmpty? getDropText(from): label,  ),
      ),
    );
  }
}
