import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/features/domain/entities/company_entity.dart';
import 'package:task/core/theming/constants.dart';
import 'package:task/features/screens/widgets/favorite_icon.dart';
import 'package:task/features/screens/widgets/property_card_widgets/property_image.dart';

import 'package:task/features/screens/widgets/property_card_widgets/rating_and_location_row.dart';

class PropertyCard extends StatefulWidget {
  final CompanyEntity entity;
  final bool isListView;

  const PropertyCard({
    required this.entity,
    super.key,
    this.isListView = false,
  });

  @override
  State<PropertyCard> createState() => _PropertyCardState();
}

class _PropertyCardState extends State<PropertyCard> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.isListView
        ? _buildListView(context)
        : _buildGridView(context);
  }

  // Widget _buildGridView(BuildContext context) {
  //   return AspectRatio(
  //     aspectRatio: 1 / 1.5,
  //     child: Container(
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(kCardRadius),
  //       ),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           AspectRatio(
  //             aspectRatio: 16 / 9,
  //             child: PropertyImage(
  //               imageUrl: widget.property.imageUrl,
  //               width: double.infinity,
  //               height: 100.h,
  //               borderRadius: kCardRadius,
  //             ),
  //           ),
  //           Expanded(
  //             child: Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Row(
  //                     children: [
  //                       Text(
  //                         widget.property.title,
  //                         style: AppTextStyles.font12bold,
  //                         textDirection: TextDirection.rtl,
  //                       ),
  //                       const Spacer(),
  //                       FavoriteIcon(
  //                         isFavorite: _isFavorite,
  //                         onTap: _toggleFavorite,
  //                       ),
  //                     ],
  //                   ),
  //                   verticalSpace(2.h),

  //                   Text(
  //                     widget.property.description,
  //                     style: AppTextStyles.font12GreyRegular,
  //                     maxLines: 3,
  //                     overflow: TextOverflow.ellipsis,
  //                     textDirection: TextDirection.rtl,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _buildGridView(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kCardRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: PropertyImage(
                imageUrl: widget.entity.image,
                width: double.infinity,

                borderRadius: kCardRadius,
                height: 0.h,
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitleAndFavoriteRow(),

                    verticalSpace(2.h),

                    // الوصف
                    Text(
                      widget.entity.desc,
                      style: AppTextStyles.font12GreyRegular,
                      overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleAndFavoriteRow() {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.entity.name,
            style: AppTextStyles.font12bold,
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        FavoriteIcon(isFavorite: _isFavorite, onTap: _toggleFavorite),
      ],
    );
  }

  Widget _buildListView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PropertyImage(
          imageUrl: widget.entity.image,
          width: 120.w,
          height: 92,
          borderRadius: kCardRadius,
        ),

        horizontalSpace(12.w),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // العنوان وأيقونة المفضلة
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        widget.entity.name,
                        style: AppTextStyles.font12bold,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    horizontalSpace(8.w),
                    // أيقونة المفضلة (استخدام الـ Widget المستخلص)
                    FavoriteIcon(
                      isFavorite: _isFavorite,
                      onTap: _toggleFavorite,
                    ),
                  ],
                ),

                verticalSpace(2.h),

                // الوصف
                Text(
                  widget.entity.desc,
                  style: AppTextStyles.font10kTextGrey,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.rtl,
                ),

                verticalSpace(5.h),

                RatingAndLocationRow(
                  rating: double.parse(widget.entity.avgRates),
                  subtitle: widget.entity.location,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
