class PPaginateData<T> {
  final int page;
  final int limit;
  final int total;
  final int totalPage;
  final List<T> data;
  final PPaginateStatusEnum status;

  PPaginateData({
    this.page = 1,
    this.limit = 10,
    this.total = 0,
    this.totalPage = 0,
    this.data = const [],
    this.status = PPaginateStatusEnum.initial,
  });

  PPaginateData copyWith({
    int? page,
    int? limit,
    int? total,
    int? totalPage,
    List<T>? data,
    PPaginateStatusEnum? status,
  }) {
    return PPaginateData(
      page: page ?? this.page,
      limit: limit ?? this.limit,
      total: total ?? this.total,
      totalPage: totalPage ?? this.totalPage,
      data: data ?? this.data,
      status: status ?? this.status,
    );
  }

  bool get isLoading => this.status == PPaginateStatusEnum.loading;

  bool get isInitial => this.status == PPaginateStatusEnum.initial;
}

enum PPaginateStatusEnum {
  initial,
  loading,
  loaded,
  error,
}
