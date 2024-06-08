import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager_app/core/const/dimension/dimensions.dart';
import 'package:task_manager_app/core/theme/app_colors.dart';

class CustomTextTheme {
  static const String fontFamily = 'Poppins';

  static TextTheme textTheme() {
    return TextTheme(
      titleLarge: TextStyle(
        fontSize: ScreenUtil().setSp(30),
        color: AppColors.textBlack,
        fontWeight: AppDimensions.medium,
        // TODO(MM): - Please add a fonts file to the constants package (just like the colors and the assets)
        fontFamily: fontFamily,
      ),
      titleMedium: TextStyle(
        fontSize: ScreenUtil().setSp(24),
        color: AppColors.blueBlack,
        fontWeight: AppDimensions.semiBold,
        fontFamily: fontFamily,
      ),
      titleSmall: TextStyle(
        fontSize: ScreenUtil().setSp(13),
        color: AppColors.white,
        fontWeight: AppDimensions.regular,
        fontFamily: fontFamily,
      ),
      // displayLarge: TextStyle(
      //   fontSize: ScreenUtil().setSp(30),
      //   color: ColorConstants.textWhite,
      //   fontWeight: bold,
      //   fontFamily: MyFontFamily.lato,
      //   height: 13.375904083251953 / 18,
      // ),
      displayMedium: TextStyle(
        fontSize: ScreenUtil().setSp(15),
        color: AppColors.blueBlack,
        fontWeight: AppDimensions.semiBold,
        fontFamily: fontFamily,
      ),
      displaySmall: TextStyle(
        fontSize: ScreenUtil().setSp(15),
        color: AppColors.textGray2,
        fontWeight: AppDimensions.light,
        fontFamily: fontFamily,
      ),
      // labelSmall: TextStyle(
      //   fontSize: ScreenUtil().setSp(16),
      //   color: ColorConstants.textLightGrey,
      //   fontWeight: regular,
      //   fontFamily: MyFontFamily.lato,
      //   // letterSpacing: -1.1,
      //   height: 13.375904083251953 / 18,
      // ),
      headlineMedium: TextStyle(
        fontSize: ScreenUtil().setSp(13),
        color: AppColors.gray,
        fontWeight: AppDimensions.regular,
        fontFamily: fontFamily,
      ),
      headlineSmall: TextStyle(
        fontSize: ScreenUtil().setSp(15),
        color: AppColors.gray,
        fontWeight: AppDimensions.light,
        fontFamily: fontFamily,
      ),
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
