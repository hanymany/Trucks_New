import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/assets_gen/fonts.gen.dart';

class CustomTextTheme {
  static TextTheme textTheme() {
    const FontWeight medium = FontWeight.w600;
    const FontWeight regular = FontWeight.w400;
    const FontWeight normal = FontWeight.w500;
    const FontWeight normalBold = FontWeight.w700;
    const FontWeight bold = FontWeight.w800;
    return TextTheme(
      titleLarge: TextStyle(
        fontSize: ScreenUtil().setSp(26),
        // color: ColorConstants.textBlack,
        fontWeight: medium,
        fontFamily: MyFontFamily.cairo,
        height: 13.375904083251953 / 18,
      ),
      // titleMedium: TextStyle(
      //   fontSize: ScreenUtil().setSp(14),
      //   color: ColorConstants.textGrey,
      //   fontWeight: normal,
      //   fontFamily: MyFontFamily.lato,
      //   height: 13.375904083251953 / 18,
      // ),
      // titleSmall: TextStyle(
      //   fontSize: ScreenUtil().setSp(18),
      //   color: ColorConstants.textGrey,
      //   fontWeight: regular,
      //   fontFamily: MyFontFamily.lato,
      //   height: 13.375904083251953 / 18,
      // ),
      // displayLarge: TextStyle(
      //   fontSize: ScreenUtil().setSp(30),
      //   color: ColorConstants.textWhite,
      //   fontWeight: bold,
      //   fontFamily: MyFontFamily.lato,
      //   height: 13.375904083251953 / 18,
      // ),
      // displayMedium: TextStyle(
      //   fontSize: ScreenUtil().setSp(26),
      //   color: ColorConstants.textWhite,
      //   fontWeight: normal,
      //   fontFamily: MyFontFamily.lato,
      //   height: 13.375904083251953 / 18,
      // ),
      // displaySmall: TextStyle(
      //   fontSize: ScreenUtil().setSp(16),
      //   color: ColorConstants.textGrey,
      //   fontWeight: normal,
      //   fontFamily: MyFontFamily.lato,
      //   height: 13.375904083251953 / 18,
      // ),
      // labelSmall: TextStyle(
      //   fontSize: ScreenUtil().setSp(16),
      //   color: ColorConstants.textLightGrey,
      //   fontWeight: regular,
      //   fontFamily: MyFontFamily.lato,
      //   // letterSpacing: -1.1,
      //   height: 13.375904083251953 / 18,
      // ),
      // headlineMedium: TextStyle(
      //   fontSize: ScreenUtil().setSp(20),
      //   color: ColorConstants.blackColor,
      //   fontWeight: normalBold,
      //   fontFamily: MyFontFamily.lato,
      //   height: 13.375904083251953 / 18,
      // ),
      // headlineSmall: TextStyle(
      //   fontSize: ScreenUtil().setSp(18),
      //   color: ColorConstants.whiteColor,
      //   fontWeight: medium,
      //   fontFamily: MyFontFamily.lato,
      //   height: 13.375904083251953 / 18,
      // ),
      // headlineLarge: TextStyle(
      //   fontSize: ScreenUtil().setSp(24),
      //   color: ColorConstants.blackColor,
      //   fontWeight: medium,
      //   fontFamily: MyFontFamily.lato,
      //   height: 13.375904083251953 / 18,
      // ),
    );
  }
}
