// import 'package:flutter/material.dart';
// import 'package:homework4/brew_deja_db.dart';

// class FavouritesTab extends StatefulWidget {
//   const FavouritesTab({super.key});

//   @override
//   State<FavouritesTab> createState() => _FavouritesTabState();
// }

// class _FavouritesTabState extends State<FavouritesTab> {
//  bool isFavourites=true;
//   bool isFav=true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff201520),
//       appBar: AppBar(
//         title: const Text(
//           'Favourites',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: const Color(
//           0xff201520,
//         ),
//       ),
//       body: dbFavourites.isEmpty
//           ? const Center(
//               child: Text(
//                 'No favourite coffees',
//                 style: TextStyle(fontSize: 24.0),
//               ),
//             )
//           : ListView.builder(
//               padding: const EdgeInsets.all(16.0),
//               itemCount: dbFavourites.length,
//               itemBuilder: (context, index) {
//                 final product = dbFavourites[index];
//                 return Card(
//                   color: Colors.blue.shade200,
//                   child: ListTile(
//                     leading: Image(image: NetworkImage(product['image'])),
//                     title: Text(product['name']),
//                     subtitle: Text(product['price'].toString()),
//                     trailing: IconButton(
// onPressed: () {
// final bool isFav =
// isFavourites(dbFavourites, widget.product);
// if (isFav) {
// favourites. remove(widget.product);
// -else {
// favourites.add(widget.product);

// setState( () {});

// }}
// }, icon:const Icon(
//                         Icons.favorite,
//                         color: Colors.red,
//                       );,
//                ),),);
//               },
//             ),

//       //  dbFavourites.isEmpty
//       //     ? const Center(
//       //         child: Text(
//       //           'No favourite coffees',
//       //           style: TextStyle(fontSize: 24.0),
//       //         ),
//       //       )
//       //     :
//       // ListView.builder(
//       //     padding: const EdgeInsets.all(16.0),
//       //     itemCount: dbFavourites.length,
//       //     itemBuilder: (context, index) {
//       //       final product = dbFavourites[index];
//       //       return Card(
//       //         color: Colors.blue.shade200,
//       //         child: ListTile(
//       //           leading: Image(image: NetworkImage(product['image'])),
//       //           title: Text(product['name']),
//       //           subtitle: Text(product['price'].toString()),
//       //           trailing: IconButton(
//       //             onPressed: () {
//       //               dbFavourites.remove(product);
//       //               setState(() {});
//       //             },
//       //             icon: const Icon(
//       //               Icons.favorite,
//       //               color: Colors.red,
//       //             ),
//       //           ),
//       //         ),
//       //       );
//       //     },
//       //   ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:homework4/Coffeee.dart';
// import 'package:homework4/brew_deja_db.dart';
// import 'package:homework4/detailsPageCoffee.dart';

// class FavouritesTab extends StatefulWidget {
//   const FavouritesTab({super.key});

//   @override
//   State<FavouritesTab> createState() => _FavouritesTabState();
// }

// class _FavouritesTabState extends State<FavouritesTab> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0Xff201520),
//       body: Column(
//         children: [
//           const Text(
//             "Favourites",
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w400,
//               color: Colors.white,
//             ),
//           ),
//           GridView.builder(
//             padding: const EdgeInsets.only(top: 10),
//             itemCount: dbProducts.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 12,
//               mainAxisSpacing: 12,
//               childAspectRatio: 0.75,
//             ),
//             itemBuilder: (context, index) {
//               final product = dbProducts[index];
//               return GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => Detailspagecoffee(
//                         product: product,
//                         imageUrl: product['image'],
//                         name: product['name'],
//                         price: product['price'].toString(),
//                         rating: double.parse(product['rating'].toString()),
//                       ),
//                     ),
//                   );
//                 },
//                 child: CoffeeCard(
//                   imageUrl: product['image'],
//                   name: product['name'],
//                   price: product['price'].toString(),
//                   rating: double.parse(product['rating'].toString()),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:homework4/brew_deja_db.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff201520),
        appBar: AppBar(
          title: const Text(
            'Favourites',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff201520),
        ),
        body: dbFavourites.isEmpty
            ? const Center(
                child: Text('No coffees', style: TextStyle(fontSize: 24.0)),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: dbFavourites.length,
                itemBuilder: (context, index) {
                  final product = dbFavourites[index];
                  return Card(
                    color: Colors.white.withValues(alpha: .1),
                    child: ListTile(
                      leading: Image(image: NetworkImage(product['image'])),
                      title: Text(product['name'],style: const TextStyle(   color: Colors.white),),
                      subtitle: Text(product['price'].toString()),
                      trailing: IconButton(
                          onPressed: () {
                            dbFavourites.remove(product);
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )),
                    ),
                  );
                },
              ));
  }
}
