import 'package:flutter/material.dart';
import 'package:login_app/features/resources/color_manager.dart';
import 'package:login_app/features/resources/font_manager.dart';
import 'package:login_app/features/resources/values_manager.dart';

class AppTheme {
  AppTheme._();
  static ThemeData themeData = ThemeData(
    textTheme: textTheme,
    inputDecorationTheme: inputDecorationTheme,
  );

//Text Theme
  static const TextTheme textTheme = TextTheme(
      headlineSmall: headLineSmall, //1/400w/22s
      labelMedium: labelMedium, //2/500w/22s
      bodyLarge: bodyLarg, //3/400w/14s
      bodySmall: bodySmall, //4/blue
      titleLarge: titleLarge, //5/700w/16s
      labelSmall: labelSmall, //6/500w/14s
      titleMedium: titleMeduim //7//400w/16s
      );

  //input Decoration theme
  static const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.all(AppPading.p24),
    border: OutlineInputBorder(
        //borderSide: BorderSide(color: ColorManager.black, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s16))),
  );
  // 1
  static const TextStyle headLineSmall = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    fontSize: FontSize.s22,
    color: ColorManager.textBlack,
  );
// 2
  static const TextStyle labelMedium = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.medium,
    fontSize: FontSize.s22,
    color: ColorManager.textBlack,
  );
  // 3
  static const TextStyle bodyLarg = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    fontSize: FontSize.s14,
    color: ColorManager.textBlack,
  );
  // 4
  static const TextStyle bodySmall = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.bold,
    fontSize: FontSize.s14,
    color: ColorManager.textBlue,
  );
  // 5
  static const TextStyle titleLarge = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.bold,
    fontSize: FontSize.s16,
    color: ColorManager.textBlack,
  );
  // 6
  static const TextStyle labelSmall = TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontWeight: FontWeightManager.medium,
      fontSize: FontSize.s14,
      color: ColorManager.textBlack,
      letterSpacing: AppSize.s0_5);
  // 7
  static const TextStyle titleMeduim = TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontWeight: FontWeightManager.regular,
    fontSize: FontSize.s16,
    color: ColorManager.textBlack,
  );
}
