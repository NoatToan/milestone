class BasePaginateResponse<T> {
  final List<T> data;
  int page;
  int pageSize;
  int totalPage;
  int totalItem;

  BasePaginateResponse({
    this.data = const [],
    this.page = 1,
    this.pageSize = 10,
    this.totalPage = 1,
    this.totalItem = 0,
  });

  factory BasePaginateResponse.fromMap(Map<String, dynamic> map) {
    return BasePaginateResponse(
      data: List<T>.from(map["data"]),
      page: map['page'] ?? 0,
      pageSize: map['pageSize'] ?? 0,
      totalPage: map['totalPage'] ?? 0,
      totalItem: map['totalItem'] ?? 0,
    );
  }
}
