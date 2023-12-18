import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kGrey = const Color(0xFF334055);
Color kPrimaryColor1 = const Color(0xffb00b69);//0xFF334055);
Color kPrimaryColor2 = const Color(0xff420a55);
Color kPrimaryColor3 = const Color(0xff042069);
Color kWhite = Colors.white;
Color kBlack = Colors.black;

TextStyle kTitleText = GoogleFonts.poppins(
  color: kWhite,
  fontSize: 75.0,
  fontWeight: FontWeight.bold,
);

TextStyle kSubTitleText = GoogleFonts.montserrat(
  color: kPrimaryColor1,
  fontWeight: FontWeight.bold,
  fontSize: 12.0,
);

TextStyle kSectionTitleText = GoogleFonts.montserrat(
  color: kPrimaryColor1,
  fontWeight: FontWeight.bold,
  fontSize: 40.0,
);

TextStyle kProjectTitleText = GoogleFonts.montserrat(
  color: kPrimaryColor3,
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
);

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateColor.resolveWith((states) => kPrimaryColor3),
    foregroundColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) return Colors.black;
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) return Colors.white;
        return kPrimaryColor3; // Defer to the widget's default.
      },
    ),
  ),
);
