class FilterCompaniesParams {
  final String subCategories;
  final int cityId;
  final String type; // 'office' or 'person'
  final String lang; // 'ar' or 'en'
  final String? search;

  // معاملات الترحيل (Pagination)
  final int page;
  final int limit;

  FilterCompaniesParams({
    required this.subCategories,
    required this.cityId,
    required this.type,
    required this.lang,
    required this.page,
    required this.limit,
    this.search,
  });
// 💡 إضافة دالة copyWith
  FilterCompaniesParams copyWith({
    String? subCategories,
    int? cityId,
    String? type,
    String? lang,
    String? search,
    int? page,
    int? limit,
  }) {
    return FilterCompaniesParams(
      subCategories: subCategories ?? this.subCategories,
      cityId: cityId ?? this.cityId,
      type: type ?? this.type,
      lang: lang ?? this.lang,
      search: search ?? this.search,
      page: page ?? this.page,
      limit: limit ?? this.limit,
    );
  }
}