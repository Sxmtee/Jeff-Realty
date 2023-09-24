import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeffrealty/Common/Utils/color.dart';

class ThemeState {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundWhite,
    iconTheme: const IconThemeData(color: AppColors.black, opacity: 0.8),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      prefixIconColor: AppColors.black,
      suffixIconColor: AppColors.black,
      focusedBorder: defaultWhiteBorder,
      enabledBorder: defaultWhiteBorder,
      border: defaultWhiteBorder,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.light().textTheme,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.backgroundWhite,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    iconTheme: const IconThemeData(color: AppColors.white, opacity: 0.8),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkButton,
      prefixIconColor: AppColors.white,
      suffixIconColor: AppColors.white,
      focusedBorder: defaultBlackBorder,
      enabledBorder: defaultBlackBorder,
      border: defaultBlackBorder,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.backgroundDark,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),
  );
}

const defaultWhiteBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.white70,
    width: 0.5,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
);

const defaultBlackBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: AppColors.darkButton,
    width: 0.5,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
);
