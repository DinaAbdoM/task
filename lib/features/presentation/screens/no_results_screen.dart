import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/extension.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/core/theming/colors.dart';

class NoResultsScreen extends StatelessWidget {
  final TextEditingController searchController;

  const NoResultsScreen({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(60.h),
          SvgPicture.asset('assets/svg/no_results.svg', height: 180.h),
          verticalSpace(20.h),
          _buildRetryButton(context),
        ],
      ),
    );
  }

  Widget _buildRetryButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushReplacementNamed('/');
      },
      child: Container(
        width: 160.w,
        height: 37.h,
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Center(
          child: Text('البحث مجدداً', style: AppTextStyles.font14kWhite),
        ),
      ),
    );
  }
}
