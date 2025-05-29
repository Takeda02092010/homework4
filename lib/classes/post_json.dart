class PostJson {
  final int userId;
  final String title;
  final String body;
  final int id;

  const PostJson({
    required this.userId,
    required this.title,
    required this.body,
    required this.id,
  });

  factory PostJson.fromJson(Map<String, dynamic> json) {
    return PostJson(
      userId: json['userId'] ?? 0,
      title: json['title']?? "",
      body: json['body']?? "",
      id: json['id']?? 0,
    );
  }
}
