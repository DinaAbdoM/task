class CompanyEntity {
  final int id;
  final String name;
  final String type;
  final String image;
  final String desc;
  final String avgRates;
  final bool fav;
  final String location;

  CompanyEntity({
    required this.id,
    required this.name,
    required this.type,
    required this.image,
    required this.desc,
    required this.avgRates,
    required this.fav,
    required this.location,
  });
}
