// import 'package:flutter/material.dart';
// import 'package:homework4/classes/post.dart';
// import 'package:homework4/post_repo/post_json_repo.dart';

// class FavouritesProvider extends ChangeNotifier {
//   bool isLoading = false;
//   bool isGetting = false;
//   List<Post> posts = [];
//   String? error;

//   Future<void> createPost() async {
//     isLoading = true;
//     notifyListeners();

//     final post = await PostJsonRepo().createPost(
//       userId: 1,
//       title: 'title',
//       body: 'body',
//       id: 1,
//     );

//     isLoading = false;
//     notifyListeners();
//   }

//   Future<void> getPosts() async {
//     isGetting = true;
//     notifyListeners();

//     final data = await PostJsonRepo().getPostJson(
//       userId: 1,
//       title: 'title',
//       body: 'body',
//       id: 1,
//     );
//     posts.addAll(data);

//     isGetting = false;
//     notifyListeners();
//   }

//   final List<Map<String, String>> products = [
//     {'name': 'Apple'},
//     {'name': 'Banana'},
//     {'name': 'Peach'},
//     {'name': 'Pineapple'},
//   ];

//   final List<Map<String, String>> favourites = [];

//   void addToFavs(Map<String, String> product) {
//     if (favourites.contains(product)) {
//       favourites.remove(product);
//     } else {
//       favourites.add(product);
//     }
//     notifyListeners();
//   }
// }
