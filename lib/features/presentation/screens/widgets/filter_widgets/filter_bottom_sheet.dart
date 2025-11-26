import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/di/dependency_injection.dart';
import 'package:task/core/helpers/extension.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/features/data/models/city_model.dart';
import 'package:task/features/data/models/sub_category_model.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/core/theming/colors.dart';
import 'package:task/core/utils/enums.dart';
import 'package:task/features/presentation/cubits/companies/companies_cubit.dart';
import 'package:task/features/presentation/cubits/filter/filter_cubit.dart';
import 'package:task/features/presentation/cubits/filter/filter_state.dart';
import 'package:task/features/presentation/screens/widgets/filter_widgets/city_dropdown.dart';
import 'package:task/features/presentation/screens/widgets/filter_widgets/filter_chips.dart';
import 'package:task/features/presentation/screens/widgets/filter_widgets/filter_header.dart';
import 'package:task/features/presentation/screens/widgets/shimmer_placeholders.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  CityModel? _selectedCity;
  List<SubCategoryModel> _selectedService = [];
  String? _selectedProvider;

  void _clearAllFilters() {
    setState(() {
      _selectedProvider = null;
      _selectedService = [];
      _selectedCity = null;
      context.pop();
    });
  }

  void _applyFilters() {
    final companiesCubit = context.read<CompaniesCubit>();
    final filterCubit = context.read<FilterCubit>();

    if (filterCubit.state is! FiltersUpdated) {
      filterCubit.updateFilters(
        selectedCityId: _selectedCity?.id,
        search: null,
        providerType: _selectedProvider,
        subCategoryIds: _selectedService,
      );
    }

    companiesCubit.filterCompanies(
      cityId: _selectedCity?.id,
      type: _selectedProvider,
      model: _selectedService,
    );

    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(getIt())..loadFilters(),
      child: FractionallySizedBox(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FilterHeader(onClearAll: _clearAllFilters),
              verticalSpace(12.h),

              Expanded(
                child: BlocBuilder<FilterCubit, FilterState>(
                  builder: (context, state) {
                    if (state is LoadFiltersLoading) {
                      return const Center(child: ShimmerGridPlaceholder());
                    }

                    if (state is LoadFiltersError) {
                      return Center(child: Text(state.error));
                    }

                    if (state is LoadFiltersSuccess) {
                      final cities = state.cities;
                      final services = state.subCategories;
                      final providerTypes = ProviderType.values
                          .map((c) => c.name)
                          .toSet()
                          .toList();

                      return SingleChildScrollView(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildFilterSection(
                              title: 'مقدم الخدمة',
                              content: _buildProviderChips(providerTypes),
                            ),
                            verticalSpace(15.h),

                            _buildFilterSection(
                              title: 'الخدمات',
                              content: _buildServiceChips(services),
                            ),
                            verticalSpace(15.h),

                            _buildFilterSection(
                              title: 'المدينة',
                              content: _buildCityDropdownWidget(cities),
                            ),
                          ],
                        ),
                      );
                    }

                    return const SizedBox();
                  },
                ),
              ),

              _buildApplyButtonWrapper(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterSection({required String title, required Widget content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildSectionTitle(title), verticalSpace(10.h), content],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: AppTextStyles.font16kDarkGrey.copyWith(color: AppColors.kDarkGrey),
    );
  }

  Widget _buildProviderChips(List<String> providers) {
    if (providers.isEmpty) return const Text('لا يوجد مقدم خدمة');
    return Row(
      children: providers.map((provider) {
        return Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: CustomFilterChip(
            label: provider,
            isSelected: _selectedProvider == provider,
            onSelected: (selected) {
              setState(() {
                _selectedProvider = selected ? provider : null;
              });
            },
          ),
        );
      }).toList(),
    );
  }

  Widget _buildServiceChips(List<SubCategoryModel> services) {
    return Wrap(
      spacing: 15.w,
      runSpacing: 10.h,
      children: services.map((service) {
        return CustomFilterChip(
          label: service.name,
          isSelected: _selectedService.contains(service),
          onSelected: (selected) {
            setState(() {
              if (_selectedService.contains(service)) {
                _selectedService.remove(service);
              } else {
                _selectedService.add(service);
              }
            });
          },
        );
      }).toList(),
    );
  }

  Widget _buildCityDropdownWidget(List<CityModel> cities) {
    return CityDropdown(
      selectedCityId: _selectedCity?.id,
      cities: cities,
      onChanged: (int? newValue) {
        setState(() {
          _selectedCity = cities.firstWhere((c) => c.id == newValue);
        });
      },
    );
  }

  Widget _buildApplyButtonWrapper() {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).viewInsets.left + 20.w,
        right: MediaQuery.of(context).viewInsets.right + 20.w,
        bottom: MediaQuery.of(context).viewInsets.bottom + 15.h,
      ),
      child: GestureDetector(
        onTap: _applyFilters,
        child: Container(
          height: 38.h,

          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Center(
            child: Text('تطبيق', style: AppTextStyles.font14kWhite),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:task/core/helpers/spacing.dart';
// import 'package:task/core/models/city_model.dart';
// import 'package:task/core/models/sub_category_model.dart';
// import 'package:task/core/theming/app_text_styles.dart';
// import 'package:task/core/theming/colors.dart';
// import 'package:task/features/screens/widgets/filter_widgets/city_dropdown.dart';
// import 'package:task/features/screens/widgets/filter_widgets/filter_chips.dart';
// import 'package:task/features/screens/widgets/filter_widgets/filter_data.dart';
// import 'package:task/features/screens/widgets/filter_widgets/filter_header.dart';

// class FilterBottomSheet extends StatefulWidget {
//   final List<CityModel> cities;
//   final List<SubCategoryModel> subCategories;
//   const FilterBottomSheet({super.key, required this.cities, required this.subCategories});

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
//       // _selectedProvider = null;
//       // _selectedService = null;
//       _selectedCity = _selectedCity;
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
//      selectedCityId:
//         _selectedCity != null ? int.tryParse(_selectedCity!) : null,
//     cities: widget.cities,
//       onChanged: (int? newValue) {
//       setState(() {
//         _selectedCity = newValue?.toString();
//       });
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
