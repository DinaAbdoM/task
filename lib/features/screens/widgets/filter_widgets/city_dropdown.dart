import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/models/city_model.dart';
import 'package:task/core/theming/app_text_styles.dart';
import 'package:task/core/theming/colors.dart';

class CityDropdown extends StatelessWidget {
  /// الـ id الخاص بالمدينة المختارة (من الـ API)
  final int? selectedCityId;

  /// قائمة المدن اللي جاية من الـ API
  final List<CityModel> cities;

  /// يرجّع الـ id الجديد لما يتغير
  final ValueChanged<int?> onChanged;

  const CityDropdown({
    super.key,
    required this.selectedCityId,
    required this.cities,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          value: selectedCityId,
          hint: Text(
            'اختر المدينة',
            style: AppTextStyles.font14kTextGrey,
            textDirection: TextDirection.rtl,
          ),
          isExpanded: true,
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.kTextGrey,
          ),
          items: cities.map((city) {
            return DropdownMenuItem<int>(
              value: city.id,
              child: Text(city.name, textDirection: TextDirection.rtl),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:task/core/theming/app_text_styles.dart';
// import 'package:task/core/theming/colors.dart';
// import 'package:task/features/screens/widgets/filter_widgets/filter_data.dart';

// class CityDropdown extends StatelessWidget {
//   final String? selectedCity;
//   final ValueChanged<String?> onChanged;

//   const CityDropdown({
//     super.key,
//     required this.selectedCity,
//     required this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 10.w),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade300),
//         borderRadius: BorderRadius.circular(10.r),
//       ),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton<String>(
//           value: selectedCity,
//           hint: Text(
//             'اختر المدينة',
//             style: AppTextStyles.font14kTextGrey,
//             textDirection: TextDirection.rtl,
//           ),
//           isExpanded: true,
//           icon: const Icon(
//             Icons.keyboard_arrow_down,
//             color:AppColors. kTextGrey,
//           ),
//           items: FilterConstants.cityOptions.map((String city) {
//             return DropdownMenuItem<String>(
//               value: city,
//               child: Text(city, textDirection: TextDirection.rtl),
//             );
//           }).toList(),
//           onChanged: onChanged,
//         ),
//       ),
//     );
//   }
// }