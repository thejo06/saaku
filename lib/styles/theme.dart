import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  static TextStyle regular12 = GoogleFonts.poppins(
    fontSize: 12,
  );

  static TextStyle medium12 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static TextStyle medium14 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle medium16 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle medium18 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static TextStyle medium20 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}
