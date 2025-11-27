import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theming/colors.dart';

class FavoriteIcon extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onTap;
  const FavoriteIcon({
    super.key,
    required this.isFavorite,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final iconData = isFavorite ? Icons.favorite : Icons.favorite_border;
    final iconColor = isFavorite ? AppColors.errorRed :AppColors. kTextGrey;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(4.r),
        decoration: BoxDecoration(
          color:AppColors. kLightGrey,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Icon(iconData, color: iconColor, size: 18.w),
      ),
    );
  }
}
