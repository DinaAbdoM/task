

  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theming/colors.dart';
import 'package:task/features/screens/widgets/constants.dart';

class FavoriteIcon extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onTap;
  const FavoriteIcon({
    required this.isFavorite,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final iconData = isFavorite ? Icons.favorite : Icons.favorite_border;
    final iconColor = isFavorite ? AppColors.errorRed : kTextGrey;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(4.r),
        decoration: BoxDecoration(
          color: kLightGrey,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Icon(iconData, color: iconColor, size: 18.w),
      ),
    );
  }
}