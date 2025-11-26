import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final double borderRadius;

  const PropertyImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)),
      child: Image.network(
        imageUrl,
        height: height.h,
        width: width,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(color: Colors.black, height: height.h, width: width);
        },
      ),
    );
  }
}
