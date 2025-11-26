import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theming/colors.dart';
import 'package:task/core/theming/font_weight_helper.dart';
import 'package:task/features/screens/widgets/constants.dart';

class AppTextStyles {
  static TextStyle font20bold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Cairo',
  );
  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
    fontFamily: 'Cairo',
  );
  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
    fontFamily: 'Cairo',
  );
  static TextStyle font20BlackBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'Cairo',
  );
  static TextStyle font18kDarkGrey = TextStyle(
    color: kDarkGrey,
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
    fontFamily: 'Cairo',
  );
  static TextStyle font20kDarkGrey = TextStyle(
    color: kDarkGrey,
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
    fontFamily: 'Cairo',
  );
  static TextStyle font16kWhite = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
    fontFamily: 'Cairo',
  );
  static TextStyle font16kblack = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
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
    color: kDarkGrey,
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
    fontFamily: 'Cairo',
  );

  static TextStyle font14kTextGrey = TextStyle(
    fontSize: 14.sp,
    color: kTextGrey,
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
    fontWeight: FontWeight.bold,
    fontSize: 12.sp,
    color: AppColors.black,
    fontFamily: 'Cairo',
  );

  static TextStyle font10kTextGrey = TextStyle(
    fontSize: 10.sp,
    color: kTextGrey,
    fontWeight: FontWeightHelper.bold,
    fontFamily: 'Cairo',
  );

  static TextStyle font16kWhitebold = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16.sp,
    fontFamily: 'Cairo',
  );
}
