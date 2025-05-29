class Homework {
  final String createdAt;
  final String name;
  final String avatar;
  final String id;

  const Homework({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.id,
  });

  factory Homework.fromJson(Map<String, dynamic> json) {
    return Homework(
      createdAt: json['createdAt'] ?? "",
      name: json['name']?? "",
      avatar: json['avatar']?? "",
      id: json['id']?? "",
    );
  }
}
