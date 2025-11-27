import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theming/colors.dart';
import 'package:task/core/theming/font_weight_helper.dart';

class AppTextStyles {
  static TextStyle font20bold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    fontFamily: 'Cairo',
  );
  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.grey,
    fontFamily: 'Cairo',
  );
  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.black.withOpacity(0.6),
    fontFamily: 'Cairo',
  );
  static TextStyle font20BlackBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.black,
    fontFamily: 'Cairo',
  );
  static TextStyle font18kDarkGrey = TextStyle(
    color: AppColors.kDarkGrey,
    fontWeight: FontWeightHelper.bold,
    fontSize: 18.sp,
    fontFamily: 'Cairo',
  );
  static TextStyle font20kDarkGrey = TextStyle(
    color: AppColors.kDarkGrey,
    fontWeight: FontWeightHelper.bold,
    fontSize: 20.sp,
    fontFamily: 'Cairo',
  );
  static TextStyle font14kWhite = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeightHelper.bold,
    fontSize: 14.sp,
    fontFamily: 'Cairo',
  );
  static TextStyle font16kWhite = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeightHelper.bold,
    fontSize: 16.sp,
    fontFamily: 'Cairo',
  );
  static TextStyle font16kblack = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeightHelper.bold,
    fontSize: 16.sp,
    fontFamily: 'Cairo',
  );
  static TextStyle font18errorRed = TextStyle(
    fontSize: 18.sp,
    color: AppColors.errorRed,
    fontWeight: FontWeightHelper.bold,
    fontFamily: 'Cairo',
  );
  static TextStyle font16kDarkGrey = TextStyle(
    color: AppColors.kDarkGrey,
    fontWeight: FontWeightHelper.bold,
    fontSize: 16.sp,
    fontFamily: 'Cairo',
  );

  static TextStyle font14kTextGrey = TextStyle(
    fontSize: 14.sp,
    color: AppColors.kTextGrey,
    fontWeight: FontWeightHelper.bold,
    fontFamily: 'Cairo',
  );

  static TextStyle font14regular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.black,
    fontFamily: 'Cairo',
  );

  static TextStyle font12bold = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 12.sp,
    color: AppColors.black,
    fontFamily: 'Cairo',
  );

  static TextStyle font10kTextGrey = TextStyle(
    fontSize: 10.sp,
    color: AppColors.kTextGrey,
    fontWeight: FontWeightHelper.bold,
    fontFamily: 'Cairo',
  );

  static TextStyle font16kWhitebold = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeightHelper.bold,
    fontSize: 16.sp,
    fontFamily: 'Cairo',
  );
}
