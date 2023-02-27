class ModelUser {
  final String id;
  final String name;

  const ModelUser({
    required this.id,
    required this.name,
  });

  ModelUser copyWith({
    String? id,
    String? name,
  }) {
    return ModelUser(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  factory ModelUser.fromMap(Map<String, dynamic> map) {
    return ModelUser(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  static const ModelUser ex = ModelUser(id: 'id', name: 'name');
}
