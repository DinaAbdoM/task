import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/core/theming/colors.dart';
import 'package:task/features/presentation/cubits/filter_cubit.dart';
import 'package:task/features/presentation/cubits/filter_state.dart';

import 'package:task/features/screens/widgets/filter_widgets/city_dropdown.dart';
import 'package:task/features/screens/widgets/filter_widgets/filter_chips.dart';
import 'package:task/features/screens/widgets/filter_widgets/filter_header.dart';


class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.77,
      child: Container(
        padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.r),
            topRight: Radius.circular(15.r),
          ),
        ),
        child: BlocBuilder<FilterCubit, FilterState>(
          builder: (context, state) {
            final cubit = context.read<FilterCubit>();

            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // الهيدر + "مسح الكل"
                FilterHeader(onClearAll: cubit.clearFilters),
                verticalSpace(20.h),

                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFilterSection(
                          title: 'مقدم الخدمة',
                          content: _buildProviderChips(context, state),
                        ),
                        verticalSpace(20.h),

                        _buildFilterSection(
                          title: 'الخدمات',
                          content: _buildServiceChips(context, state),
                        ),
                        verticalSpace(20.h),

                        _buildFilterSection(
                          title: 'المدينة',
                          content: _buildCityDropdownWidget(context, state),
                        ),
                        verticalSpace(20.h),
                      ],
                    ),
                  ),
                ),

                _buildApplyButtonWrapper(context, state),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildFilterSection({
    required String title,
    required Widget content,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title),
        verticalSpace(10.h),
        content,
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style:
          AppTextStyles.font16kDarkGrey.copyWith(color: AppColors.kDarkGrey),
    );
  }

  /// Chips لمقدم الخدمة: أفراد / مكاتب هندسية
  Widget _buildProviderChips(BuildContext context, FilterState state) {
    final cubit = context.read<FilterCubit>();

    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: CustomFilterChip(
            label: 'الأفراد',
            isSelected: state.selectedProviderType == ProviderType.person,
            onSelected: (selected) {
              cubit.changeProviderType(selected ? ProviderType.person : null);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: CustomFilterChip(
            label: 'المكاتب الهندسية',
            isSelected: state.selectedProviderType == ProviderType.office,
            onSelected: (selected) {
              cubit.changeProviderType(selected ? ProviderType.office : null);
            },
          ),
        ),
      ],
    );
  }

  /// Chips للخدمات (من الـ API: state.subCategories)
  Widget _buildServiceChips(BuildContext context, FilterState state) {
    final cubit = context.read<FilterCubit>();

    return Wrap(
      spacing: 15.w,
      runSpacing: 10.h,
      children: state.subCategories.map((sub) {
        final isSelected = state.selectedSubCategoryIds.contains(sub.id);
        return CustomFilterChip(
          label: sub.name,
          isSelected: isSelected,
          onSelected: (_) {
            cubit.toggleSubCategory(sub.id);
          },
        );
      }).toList(),
    );
  }

  /// Dropdown للمدن (من الـ API: state.cities)
  Widget _buildCityDropdownWidget(BuildContext context, FilterState state) {
    final cubit = context.read<FilterCubit>();

    return CityDropdown(
      selectedCityId: state.selectedCityId,
      cities: state.cities,
      onChanged: cubit.changeCity,
    );
  }

  /// زر "تطبيق"
  Widget _buildApplyButtonWrapper(BuildContext context, FilterState state) {
    final cubit = context.read<FilterCubit>();

    final isLoading = state.isFiltering;

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 15.h,
      ),
      child: GestureDetector(
        onTap: isLoading
            ? null
            : () async {
                await cubit.applyFilter(page: 1);
                // لو حابب ترجع الـ state للـ screen:
                Navigator.pop(context);
              },
        child: Container(
          height: 45.h,
          decoration: BoxDecoration(
            color: isLoading
                ? AppColors.kPrimaryColor.withOpacity(0.7)
                : AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Center(
            child: isLoading
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : Text(
                    'تطبيق',
                    style: AppTextStyles.font16kWhitebold,
                  ),
          ),
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:task/core/helpers/spacing.dart';
// import 'package:task/core/theming/app_text_styles.dart';
// import 'package:task/core/theming/colors.dart';
// import 'package:task/features/screens/widgets/filter_widgets/city_dropdown.dart';
// import 'package:task/features/screens/widgets/filter_widgets/filter_chips.dart';
// import 'package:task/features/screens/widgets/filter_widgets/filter_data.dart';
// import 'package:task/features/screens/widgets/filter_widgets/filter_header.dart';

// class FilterBottomSheet extends StatefulWidget {
//   const FilterBottomSheet({super.key});

//   @override
//   State<FilterBottomSheet> createState() => _FilterBottomSheetState();
// }

// class _FilterBottomSheetState extends State<FilterBottomSheet> {
//   String? _selectedProvider;
//   String? _selectedService;
//   String? _selectedCity;

//   /// تقوم بمسح جميع الفلاتر المختارة
//   void _clearAllFilters() {
//     setState(() {
//       _selectedProvider = null;
//       _selectedService = null;
//       _selectedCity = null;
//     });
//   }

//   /// تطبيق الفلاتر وإغلاق الشاشة
//   void _applyFilters() {
//     Navigator.pop(context, {
//       'provider': _selectedProvider,
//       'service': _selectedService,
//       'city': _selectedCity,
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FractionallySizedBox(
//       heightFactor: 0.77,
//       child: Container(
//         padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(15.r),
//             topRight: Radius.circular(15.r),
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             FilterHeader(onClearAll: _clearAllFilters),
//             verticalSpace(20.h),

//             Expanded(
//               child: SingleChildScrollView(
//                 padding: EdgeInsets.only(bottom: 20.h),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _buildFilterSection(
//                       title: 'مقدم الخدمة',
//                       content: _buildProviderChips(),
//                     ),
//                     verticalSpace(20.h),

//                     _buildFilterSection(
//                       title: 'الخدمات',
//                       content: _buildServiceChips(),
//                     ),
//                     verticalSpace(20.h),

//                     _buildFilterSection(
//                       title: 'المدينة',
//                       // 🔄 **تحسين:** استخدام المكون المستخلص
//                       content: _buildCityDropdownWidget(),
//                     ),
//                     verticalSpace(20.h),
//                   ],
//                 ),
//               ),
//             ),

//             _buildApplyButtonWrapper(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFilterSection({required String title, required Widget content}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [_buildSectionTitle(title), verticalSpace(10.h), content],
//     );
//   }

//   Widget _buildSectionTitle(String title) {
//     return Text(
//       title,
//       style: AppTextStyles.font16kDarkGrey.copyWith(color: AppColors.kDarkGrey),
//     );
//   }

//   Widget _buildProviderChips() {
//     return Row(
//       children: FilterConstants.providerOptions.map((provider) {
//         return Padding(
//           padding: EdgeInsets.only(right: 15.w),
//           child: CustomFilterChip(
//             label: provider,
//             isSelected: _selectedProvider == provider,
//             onSelected: (selected) {
//               setState(() {
//                 _selectedProvider = selected ? provider : null;
//               });
//             },
//           ),
//         );
//       }).toList(),
//     );
//   }

//   Widget _buildServiceChips() {
//     return Wrap(
//       spacing: 15.w,
//       runSpacing: 10.h,
//       children: FilterConstants.serviceOptions.map((service) {
//         return CustomFilterChip(
//           label: service,
//           isSelected: _selectedService == service,
//           onSelected: (selected) {
//             setState(() {
//               _selectedService = selected ? service : null;
//             });
//           },
//         );
//       }).toList(),
//     );
//   }

//   Widget _buildCityDropdownWidget() {
//     return CityDropdown(
//       selectedCity: _selectedCity,
//       onChanged: (String? newValue) {
//         setState(() {
//           _selectedCity = newValue;
//         });
//       },
//     );
//   }

//   Widget _buildApplyButtonWrapper() {
//     return Padding(
//       padding: EdgeInsets.only(
//         bottom: MediaQuery.of(context).viewInsets.bottom + 15.h,
//       ),
//       child: GestureDetector(
//         onTap: _applyFilters,
//         child: Container(
//           height: 45.h,
//           decoration: BoxDecoration(
//             color: AppColors.kPrimaryColor,
//             borderRadius: BorderRadius.circular(20.r),
//           ),
//           child: Center(
//             child: Text('تطبيق', style: AppTextStyles.font16kWhitebold),
//           ),
//         ),
//       ),
//     );
//   }
// }
