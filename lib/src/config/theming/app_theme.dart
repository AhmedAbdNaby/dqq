import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers.dart';

class AppTheme {
  // light theme.
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: Helpers.getFontFamily(),
      primaryColor: const Color(0xffAE1828),
      colorScheme: const ColorScheme.light(
        primary: Color(0xffAE1828),
        secondary: Color(0xff218617),
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xffAE1828),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
          fontFamily: Helpers.getFontFamily(),
          color: const Color(0xffAE1828),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          backgroundColor: const Color(0xffAE1828),
          textStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: Helpers.getFontFamily(),
          ),
          fixedSize: Size(double.infinity, 44.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  // dark theme.
  // static ThemeData darkTheme() {
  //   return ThemeData(
  //     fontFamily: Utils.getFontFamily(),
  //     primaryColor: const Color(0xffF1734F),
  //     colorScheme: const ColorScheme.dark(
  //       primary: Color(0xffF1734F),
  //     ),
  //     appBarTheme: AppBarTheme(
  //       backgroundColor: const Color(0xffF1734F),
  //       elevation: 0,
  //       centerTitle: true,
  //       titleTextStyle: TextStyle(
  //         fontSize: 22.sp,
  //         fontWeight: FontWeight.w600,
  //         fontFamily: Utils.getFontFamily(),
  //         color: const Color(0xffF1734F),
  //       ),
  //     ),
  //   );
  // }
}
