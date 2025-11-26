import 'package:task/features/data/models/company_model.dart';
import 'package:task/features/data/models/filter_response_model.dart';
import 'package:task/features/data/models/pagination_model.dart';
import 'package:task/features/data/models/sub_category_model.dart';
import 'package:task/features/domain/entities/company_entity.dart';
import 'package:task/features/domain/entities/filter_companies_entity.dart';
import 'package:task/features/domain/entities/pagination_entity.dart';
import 'package:task/features/domain/entities/sub_category_entity.dart';


extension FilterMapper on FilterDataModel{

  FilterCompaniesEntity toEntity() {
    if (companies == null || pagination == null) {
      throw Exception('Companies or pagination is null');
    }
    return FilterCompaniesEntity(
      companies: companies!.map((e) => e.toEntity()).toList(),
      pagination: pagination!.toEntity(),
    );
  }

  
}
extension CompanyMapper on CompanyModel {
  CompanyEntity toEntity() {
    return CompanyEntity(
      id: id ?? 0,
      name: name ?? '',
      type: type ?? '',
      image: img ?? '',
      desc: desc ?? '',
      avgRates: avgRates ?? "0",
      fav: fav ?? false,
      location: location ?? '',
    );
  }
}

extension PaginationMapper on PaginationModel {
  PaginationEntity toEntity() {
    return PaginationEntity(
      currentPage: currentPage ?? 1,
      lastPage: lastPage ?? 1,
      totalItems: totalItems ?? 0,
    );
  }
}
extension SubCategoryMapper on SubCategoryModel {
  SubCategoryEntity toEntity() {
    return SubCategoryEntity(
      id: id,
      name: name,
      img: img,
    );
  }
}
