import 'dart:convert';

import 'package:task/features/data/models/sub_category_model.dart';

class FilterCompaniesRequest {
  int? page;

  String? search;

  int? cityId;

  String? type;

  List<SubCategoryModel>? subCategories;

  FilterCompaniesRequest({
    this.page,
    this.search,
    this.cityId,
    this.type,
    this.subCategories,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    if (page != null) data['page'] = page;
    if (search != null) data['search'] = search;
    if (cityId != null) data['city_id'] = cityId;
    if (type != null) data['type'] = type;

    if (subCategories != null && subCategories!.isNotEmpty) {
      data['sub_categories'] = jsonEncode(
        subCategories!.map((e) => e.toJson()).toList(),
      );
    }

    return data;
  }
}
