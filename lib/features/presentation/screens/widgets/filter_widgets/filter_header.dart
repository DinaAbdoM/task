import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/core/theming/colors.dart';

class FilterHeader extends StatelessWidget {
  final VoidCallback onClearAll;

  const FilterHeader({super.key, required this.onClearAll});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildDragHandle(), verticalSpace(7.h), _buildHeaderRow()],
    );
  }

  Widget _buildDragHandle() {
    return Center(
      child: Container(
        height: 5.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: AppColors.kDarkGrey,
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('تصنيف حسب', style: AppTextStyles.font16kblack),
        GestureDetector(
          onTap: onClearAll,
          child: Text(
            'مسح الكل',
            style: AppTextStyles.font18errorRed.copyWith(
              color: AppColors.kErrorRed,
            ),
          ),
        ),
      ],
    );
  }
}
