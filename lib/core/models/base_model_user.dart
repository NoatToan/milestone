class BaseModelUser {
  final String id;
  final String name;

  const BaseModelUser({
    required this.id,
    required this.name,
  });

  BaseModelUser copyWith({
    String? id,
    String? name,
  }) {
    return BaseModelUser(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  factory BaseModelUser.fromMap(Map<String, dynamic> map) {
    return BaseModelUser(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  static const BaseModelUser ex = BaseModelUser(id: 'id', name: 'name');
}
