import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/core/theming/constants.dart';
import 'package:task/features/screens/widgets/search_app_bar.dart';

class NoResultsScreen extends StatelessWidget {
  final TextEditingController searchController;

  const NoResultsScreen({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset('assets/images/no_results.png', height: 180.h),
        verticalSpace(30.h),
        _buildRetryButton(context),
      ],
    );
  }

  // // دالة حقل الإدخال النقي (مكررة، ولكنها ضرورية لتصميم شاشة "لا توجد نتائج" بشكل مستقل)
  // Widget _buildSearchTextField() {
  //   return Container(
  //     height: 45.h,
  //     decoration: BoxDecoration(
  //       color: kLightGrey,
  //       borderRadius: BorderRadius.circular(25.r),
  //     ),
  //     child: TextField(
  //       controller: searchController,
  //       decoration: InputDecoration(
  //         hintText: 'ابحث عن شركة أو فرد',
  //         hintStyle: const TextStyle(color: kTextGrey, fontSize: 14),
  //         border: InputBorder.none,
  //         prefixIcon: Padding(
  //           padding: EdgeInsets.only(left: 8.w, right: 12.w),
  //           child: Icon(Icons.search, color: kTextGrey, size: 25.w),
  //         ),
  //         prefixIconConstraints: const BoxConstraints(
  //           minWidth: 0,
  //           minHeight: 0,
  //         ),
  //         contentPadding: EdgeInsets.symmetric(vertical: 10.h),
  //       ),
  //     ),
  //   );
  // }

  Widget _buildRetryButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        searchController.clear();
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: 180.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            'البحث مجدداً',
            style: AppTextStyles.font16kWhite.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
