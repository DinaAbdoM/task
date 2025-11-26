import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/di/dependency_injection.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/features/presentation/companies/companies_cubit.dart';
import 'package:task/features/presentation/filter/filter_cubit.dart';
import 'package:task/core/theming/constants.dart';
import 'package:task/features/screens/widgets/filter_widgets/filter_bottom_sheet.dart';

class SearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  final TextEditingController searchController;
  final bool isListView;
  final Function onToggleView;
  final Function onPerformSearch;

  const SearchAppBar({
    super.key,
    required this.searchController,
    required this.isListView,
    required this.onToggleView,
    required this.onPerformSearch,
  });

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(80.h);
}

class _SearchAppBarState extends State<SearchAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          _buildCustomAppBar(context),
          verticalSpace(7.h),
          _buildSearchBar(context),
          verticalSpace(10.h),
        ],
      ),
    );
  }

  // 1. شريط التطبيق العلوي
  Widget _buildCustomAppBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('الشركات و الافراد', style: AppTextStyles.font16kDarkGrey),
            IconButton(
              onPressed: () => widget.onToggleView(),
              icon: Icon(
                widget.isListView ? Icons.grid_view_outlined : Icons.menu,
                size: 25.w,
                color: kTextGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 2. شريط البحث الكامل (Input + Filter Button)
  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(child: _buildSearchTextField()),
          horizontalSpace(12.w),

          GestureDetector(
            onTap: () {
              // final filterCubit = context.read<FilterCubit>();
              final cubit = context.read<CompaniesCubit>();
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                builder: (BuildContext context) {
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider.value(value: cubit),
                      BlocProvider(
                        create: (_) => getIt<FilterCubit>()..loadFilters(),
                      ),
                    ],
                    child: const FilterBottomSheet(),
                  );

                  //   // return const FilterBottomSheet();
                  //   return BlocProvider.value(
                  //     value: filterCubit,
                  //     child: const FilterBottomSheet(),
                  //   );
                },
              ).then((filterResults) {
                if (filterResults != null) {
                  widget.onPerformSearch();
                }
              });
            },
            child: SvgPicture.asset(
              'assets/svg/search_icon.svg',
              width: 40.w,
              height: 40.h,
            ),
          ),
        ],
      ),
    );
  }

  // دالة حقل الإدخال النقي
  Widget _buildSearchTextField() {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
        color: kLightGrey,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: TextField(
        controller: widget.searchController,
        onSubmitted: (query) =>
            context.read<CompaniesCubit>().filterCompanies(query: query),
        decoration: InputDecoration(
          hintText: 'ابحث عن شركة أو فرد',
          hintStyle: const TextStyle(color: kTextGrey, fontSize: 14),
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 8.w, right: 12.w),
            child: Icon(Icons.search, color: kTextGrey, size: 25.w),
          ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10.h),
        ),
      ),
    );
  }
}
