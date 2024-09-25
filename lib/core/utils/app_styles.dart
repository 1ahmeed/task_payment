import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyles{
  static const _defaultLetterSpacing = 0.03;

  static const _baseTextStyle = TextStyle(
    letterSpacing: _defaultLetterSpacing,
    fontFamily: 'Noor',
    height: 2,
  );
  static TextStyle s18DeepBlue() => _baseTextStyle.merge(TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.deepBlueColor,
      height: 0
  ));
  static TextStyle s15DeepBlue() => _baseTextStyle.merge(TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.deepBlueColor, height: 0
  ));
  static TextStyle s13Grey() => _baseTextStyle.merge(TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.greyColor,height: 0
  ));
  static TextStyle s14White() => _baseTextStyle.merge(TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400, height: 0,
    color: AppColors.whiteColor,
  ));
  static TextStyle s10DeepRed() => _baseTextStyle.merge(TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,height: 0,
    color: AppColors.deepRedColor,
  ));
  static TextStyle s20DeepBlue() => _baseTextStyle.merge(TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,height: 0,
    color: AppColors.deepBlueColor,
  ));
  static TextStyle s10DeepBlueWithOpacity() => _baseTextStyle.merge(TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.deepBlueColor.withOpacity(.63),height: 0
  ));
  static TextStyle s10gold() => _baseTextStyle.merge(TextStyle(
      fontSize: 10.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.goldColor,height: 0
  ));
  static TextStyle s12gold() => _baseTextStyle.merge(TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.goldColor,height: 0
  ));
  static TextStyle s12DeepRed() => _baseTextStyle.merge(TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,height: 0,
    color: AppColors.deepRedColor,
  ));
}