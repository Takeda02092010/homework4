// class Post {
//   final int userId;
//   final int id;
//   final String title;
//   final String body;

//   const Post({
//     required this.userId,
//     required this.id,
//     required this.title,
//     required this.body,
//   });

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }
// }


import 'package:hive_flutter/hive_flutter.dart'; 
part 'post.g.dart';//dart run build_runner build --delete-conflicting-outputs
@HiveType(typeId: 1)
class Post {
  @HiveField(0)
  final int userId;
  @HiveField(1)
  final int id;
  @HiveField(2)
  final String title;
   @HiveField(3)
  final String body;

  const Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
