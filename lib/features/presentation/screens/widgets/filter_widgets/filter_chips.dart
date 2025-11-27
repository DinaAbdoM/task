import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/core/theming/colors.dart';

class CustomFilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  const CustomFilterChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      showCheckmark: false,
      selected: isSelected,
      onSelected: onSelected,
      selectedColor: AppColors.kPrimaryColor.withOpacity(0.2),
      backgroundColor: Colors.white,
      side: BorderSide(
        color: isSelected ? AppColors.kDarkGrey : Colors.grey.shade300,
        width: 1,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      labelStyle: AppTextStyles.font14kTextGrey.copyWith(
        color: AppColors.kDarkGrey,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
    );
  }
}
