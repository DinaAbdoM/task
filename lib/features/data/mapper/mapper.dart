import 'package:task/core/models/company_model.dart';
import 'package:task/core/models/filter_response_model.dart';
import 'package:task/core/models/pagination_model.dart';
import 'package:task/features/domain/entities/company_entity.dart';
import 'package:task/features/domain/entities/filter_companies_entity.dart';
import 'package:task/features/domain/entities/pagination_entity.dart';


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
