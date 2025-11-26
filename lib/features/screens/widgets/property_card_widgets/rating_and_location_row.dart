import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/features/screens/widgets/constants.dart';

class RatingAndLocationRow extends StatelessWidget {
  final double rating;
  final String subtitle;
  const RatingAndLocationRow({super.key, 
    required this.rating,
    required this.subtitle,
  });

  Widget _buildRatingStars(double rating) {
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < fullStars) {
          return Icon(Icons.star, color: Colors.amber, size: 16.w);
        } else if (index == fullStars && hasHalfStar) {
          return Icon(Icons.star_half, color: Colors.amber, size: 16.w);
        } else {
          return Icon(Icons.star_border, color: Colors.amber, size: 16.w);
        }
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildRatingStars(rating),
        horizontalSpace(15.w),
        Icon(Icons.location_on, color: kTextGrey, size: 16.w),
        horizontalSpace(4.w),
        Expanded(
          child: Text(
            subtitle,
            style: AppTextStyles.font10kTextGrey,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl, // أضفت اتجاه النص ليتناسب مع بقية العناصر
          ),
        ),
      ],
    );
  }
}