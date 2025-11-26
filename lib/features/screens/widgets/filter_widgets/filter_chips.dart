import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/features/screens/widgets/constants.dart'; // استيراد الثوابت

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
      selected: isSelected,
      onSelected: onSelected,
      selectedColor: kPrimaryColor.withOpacity(0.1),
      backgroundColor: Colors.white,
      side: BorderSide(
        color: isSelected ? kPrimaryColor : Colors.grey.shade300,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      labelStyle: AppTextStyles.font14kTextGrey.copyWith(
        color: isSelected ? kDarkGrey : kTextGrey,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
    );
  }
}