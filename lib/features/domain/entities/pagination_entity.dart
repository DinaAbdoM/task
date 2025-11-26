class PaginationEntity {
  final int currentPage;
  final int lastPage;
  final int totalItems;

  PaginationEntity({
    required this.currentPage,
    required this.lastPage,
    required this.totalItems,
  });
}
