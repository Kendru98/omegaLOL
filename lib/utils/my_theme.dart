import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:omega_lul/utils/my_colors.dart';

class MyTheme {
  static final textCairo64 = GoogleFonts.cairo(
    textStyle: const TextStyle(
      color: MyColors.white,
      fontSize: 64,
      fontWeight: FontWeight.w600,
    ),
  );

  static final dmSans14w400 = GoogleFonts.dmSans(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );

  static final textTitle16w700 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: MyColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );

  static final textTitle16w600G = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Colors.green,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );

  static final textTitle16w600R = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Colors.red,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );

  static final textTitle16w400 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: MyColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  );
}
