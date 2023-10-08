import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles{
  static TextStyle headerTextStyle() {
    return GoogleFonts.pacifico(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 1
    );
  }
  static TextStyle montserratStyle({required Color color}){
    return GoogleFonts.alegreya(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: 24,
      letterSpacing: 2
    );
  }
  static TextStyle headingStyle({double fontSize = 36, Color color = Colors.white,}){
    return GoogleFonts.abrilFatface(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      letterSpacing: 3,
    );
  }
  static TextStyle normalStyle(){
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: Colors.white,
      letterSpacing: 1
    );
  }
}