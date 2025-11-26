import 'package:task/features/domain/entities/company_entity.dart';
import 'package:task/features/domain/entities/pagination_entity.dart';

class FilterCompaniesEntity {
  final List<CompanyEntity> companies;
  final PaginationEntity pagination;

  FilterCompaniesEntity({required this.companies, required this.pagination});
}
