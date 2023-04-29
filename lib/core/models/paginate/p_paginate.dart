class PPaginate<T> {
  final int page;
  final int limit;
  final int total;
  final int totalPage;
  final List<T> data;

  PPaginate({
    this.page = 1,
    this.limit = 10,
    this.total = 0,
    this.totalPage = 0,
    this.data = const [],
  });

  PPaginate copyWith({
    int? page,
    int? limit,
    int? total,
    int? totalPage,
    List<T>? data,
  }) {
    return PPaginate(
      page: page ?? this.page,
      limit: limit ?? this.limit,
      total: total ?? this.total,
      totalPage: totalPage ?? this.totalPage,
      data: data ?? this.data,
    );
  }
}
