import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newpractice/style/k_color.dart';

class KTextStyle {
  static final TextStyle headline1 = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.montserratAlternates().fontFamily,
  );

  static final TextStyle headline2 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily,
      color: KColor.chattext);

  static final TextStyle chattext = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static final TextStyle typetext = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  /// eg:
  /// KTextStyle.copyWith(color: KColor.black)

}
