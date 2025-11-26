import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/domain/entities/company_entity.dart';
import 'package:task/core/theming/constants.dart';
import 'package:task/features/presentation/screens/widgets/property_card_widgets/property_card.dart';
import 'package:task/features/presentation/screens/widgets/shimmer_placeholders.dart';

class SearchContent extends StatelessWidget {
  final bool isListView;
  final bool isLoadingMore;
  final int currentMaxItems;
  final List<CompanyEntity> filteredProperties;

  const SearchContent({
    super.key,
    required this.isListView,
    required this.isLoadingMore,
    required this.currentMaxItems,
    required this.filteredProperties,
  });

  @override
  Widget build(BuildContext context) {
    Widget currentView = isListView
        ? _buildListView(context)
        : _buildGridView(context);

    Widget currentShimmer = isListView
        ? const ShimmerListPlaceholder()
        : const ShimmerGridPlaceholder();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        currentView,
        if (isLoadingMore)
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: currentShimmer,
            ),
          ),
        verticalSpace(20.h),
      ],
    );
  }

  Widget _buildGridView(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: (kPadding / 2).w,
        mainAxisSpacing: (0).h,
        childAspectRatio: 0.95,
      ),
      itemCount: currentMaxItems,
      itemBuilder: (context, index) {
        return PropertyCard(
          entity: filteredProperties[index],
          isListView: false,
        );
      },
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: currentMaxItems,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: PropertyCard(
            entity: filteredProperties[index],
            isListView: true,
          ),
        );
      },
    );
  }
}
