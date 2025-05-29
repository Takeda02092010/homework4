// import 'package:flutter/material.dart';
// import 'package:homework4/brew_deja_db.dart';

// class CoffeeFav extends StatefulWidget {
//   final String imageUrl;
//   final String name;
//   final String price;

//   const CoffeeFav({
//     super.key,
//     required this.imageUrl,
//     required this.name,
//     required this.price,
//   });

//   @override
//   State<CoffeeFav> createState() => _CoffeeFavState();
// }

// class _CoffeeFavState extends State<CoffeeFav> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(20.0)),
//         color: Colors.white.withValues(alpha: .1),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               ClipRRect(
//                 borderRadius: const BorderRadius.all(Radius.circular(20)),
//                 child: Image.network(
//                   widget.imageUrl,
//                   height: 120,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Positioned(
//                 top: 8,
//                 left: 8,
//                 child: Container(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
//                   decoration: BoxDecoration(
//                     color: Colors.black.withValues(alpha: .6),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: const Row(
//                     children: [
//                       Icon(Icons.star, color: Colors.orange, size: 14),
//                       SizedBox(width: 2),
//                       Icon(
//                         Icons.favorite,
//                         color: Colors.red,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   widget.name,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//                 Text(
//                   widget.price,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
