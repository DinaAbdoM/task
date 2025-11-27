import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/theming/colors.dart';

const int itemsPerPage = 6;

class ShimmerGridPlaceholder extends StatelessWidget {
  const ShimmerGridPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: (kPadding / 2).w,
        mainAxisSpacing: (0).h,
        childAspectRatio: 0.95,
      ),
      itemCount: itemsPerPage,
      itemBuilder: (context, index) {
        return const _ShimmerItemPlaceholder();
      },
    );
  }
}

class ShimmerListPlaceholder extends StatelessWidget {
  const ShimmerListPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemsPerPage,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: const _ShimmerItemPlaceholder(),
        );
      },
    );
  }
}

class _ShimmerItemPlaceholder extends StatelessWidget {
  const _ShimmerItemPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.darkGrey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(kCardRadius.r),
          ),
        ),
        verticalSpace(8.h),
        Container(height: 12.h, width: 100.w, color: Colors.white),
        verticalSpace(8.h),
        Container(height: 10.h, width: 150.w, color: Colors.white),
      ],
    );
  }
}
