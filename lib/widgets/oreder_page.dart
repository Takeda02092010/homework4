// // // import 'package:flutter/material.dart';
// // // import 'package:homework4/brew_deja_db.dart';

// // // class OrderTab extends StatefulWidget {
// // //   const OrderTab({super.key});

// // //   @override
// // //   State<OrderTab> createState() => _OrderTabState();
// // // }

// // // class _OrderTabState extends State<OrderTab> {
// // //   int dona = 0;
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Color(0xff201520),
// // //       body: SafeArea(
// // //         child: Padding(
// // //           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               const Text(
// // //                 'Cart',
// // //                 style: TextStyle(color: Colors.white, fontSize: 24),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               if (dbProducts.isEmpty)
// // //                 const Center(
// // //                   child: Text(
// // //                     'No ordered foods',
// // //                     style: TextStyle(fontSize: 24.0),
// // //                   ),
// // //                 )
// // //               else
// // //                 ListView.builder(
// // //                   shrinkWrap: true,
// // //                   itemCount: dbProducts.length,
// // //                   itemBuilder: (context, index) {
// // //                     final product = dbProducts[index];
// // //                     return Card(
// // //                       color: Colors.blue.shade200,
// // //                       child: ListTile(
// // //                           leading: Image(image: NetworkImage(product['image'])),
// // //                           title: Text(product['name']),
// // //                           subtitle: Text(product['price'].toString()),
// // //                           trailing: Container(
// // //                             // width: 87,
// // //                             // height: 30,
// // //                             decoration: const BoxDecoration(
// // //                               borderRadius:
// // //                                   BorderRadius.all(Radius.circular(8)),
// // //                               color: Color(0xFFFFFFFF14),
// // //                             ),
// // //                             child: Row(
// // //                               mainAxisAlignment: MainAxisAlignment.center,
// // //                               children: [
// // //                                 IconButton(
// // //                                   onPressed: () {
// // //                                     setState(() {
// // //                                       if (dona > 0) dona--;
// // //                                     });
// // //                                   },
// // //                                   icon: const Icon(Icons.remove),
// // //                                 ),
// // //                                 Text(dona.toString()),
// // //                                 IconButton(
// // //                                   onPressed: () {
// // //                                     setState(() {
// // //                                       dona++;
// // //                                     });
// // //                                   },
// // //                                   icon: const Icon(Icons.add),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           )),
// // //                     );
// // //                   },
// // //                 ),
// // //               const Text(
// // //                 "-----------------------------------------------",
// // //                 style: TextStyle(color: Color(0xFFFFFFFF33)),
// // //               ),
// // //               const Row(
// // //                 children: [
// // //                   Text(
// // //                     "Delivery Charges",
// // //                     style: TextStyle(
// // //                       fontWeight: FontWeight.w400,
// // //                       fontSize: 14,
// // //                     ),
// // //                   ),
// // //                   Text(
// // //                     "₹49",
// // //                     style: TextStyle(
// // //                       fontWeight: FontWeight.w400,
// // //                       fontSize: 14,
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //               const Row(
// // //                 children: [
// // //                   Text(
// // //                     "Taxes",
// // //                     style: TextStyle(
// // //                       fontWeight: FontWeight.w400,
// // //                       fontSize: 14,
// // //                     ),
// // //                   ),
// // //                   Text(
// // //                     "₹64.87",
// // //                     style: TextStyle(
// // //                       fontWeight: FontWeight.w400,
// // //                       fontSize: 14,
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //               const Text(
// // //                 "-----------------------------------------------",
// // //                 style: TextStyle(color: Color(0xFFFFFFFF33)),
// // //               ),
// // //               const Row(
// // //                 children: [
// // //                   Text(
// // //                     "Grand Total",
// // //                     style: TextStyle(
// // //                       fontWeight: FontWeight.w400,
// // //                       fontSize: 14,
// // //                     ),
// // //                   ),
// // //                   Text(
// // //                     "₹1009.87",
// // //                     style: TextStyle(
// // //                       fontWeight: FontWeight.w400,
// // //                       fontSize: 14,
// // //                     ),
// // //                   )
// // //                 ],
// // //               ),
// // //               Container(
// // //                 width: 343,
// // //                 height: 45,
// // //                 decoration: const BoxDecoration(
// // //                   borderRadius: BorderRadius.all(
// // //                     Radius.circular(10),
// // //                   ),
// // //                   color: Color(0xFFEFE3C8),
// // //                 ),
// // //                 child: const Align(
// // //                     alignment: Alignment.center,
// // //                     child: Text(
// // //                       "PAY NOW",
// // //                       style: TextStyle(
// // //                           fontWeight: FontWeight.w600,
// // //                           fontSize: 16,
// // //                           color: Color(0xFF4A2B29)),
// // //                     )),
// // //               )
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:homework4/brew_deja_db.dart';

// // class OrderTab extends StatefulWidget {
// //   const OrderTab({super.key});

// //   @override
// //   State<OrderTab> createState() => _OrderTabState();
// // }

// // class _OrderTabState extends State<OrderTab> {
// //   List<int> quantities = [];

// //   @override
// //   Widget build(BuildContext context) {
// //     if (quantities.length != dbProducts.length) {
// //       quantities = List<int>.filled(dbProducts.length, 0);
// //     }

// //     return Scaffold(
// //       backgroundColor: const Color(0xff201520),
// //       body: SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               const Text(
// //                 'Cart',
// //                 style: TextStyle(color: Colors.white, fontSize: 24),
// //               ),
// //               const SizedBox(height: 16),
// //               dbProducts.isNotEmpty ?
// //                 const Center(
// //                   child: Text(
// //                     'No ordered coffees',
// //                     style: TextStyle(fontSize: 24.0),
// //                   ),
// //                 )
// //              :
// //                 Expanded(
// //                   child: ListView.builder(
// //                     itemCount: dbProducts.length,
// //                     itemBuilder: (context, index) {
// //                       final product = dbProducts[index];
// //                       return Card(
// //                         color: Colors.blue.shade200,
// //                         child: ListTile(
// //                           leading: Image(image: NetworkImage(product['image'])),
// //                           title: Text(product['name']),
// //                           subtitle: Text(product['price'].toString()),
// //                           trailing: Container(
// //                             decoration: const BoxDecoration(
// //                               borderRadius:
// //                                   BorderRadius.all(Radius.circular(8)),
// //                               color: Color(0xFFFFFFFF14),
// //                             ),
// //                             child: Row(
// //                               mainAxisSize: MainAxisSize.min,
// //                               children: [
// //                                 IconButton(
// //                                   onPressed: () {
// //                                     setState(() {
// //                                       if (quantities[index] > 0) {
// //                                         quantities[index]--;
// //                                       }
// //                                     });
// //                                   },
// //                                   icon: const Icon(Icons.remove),
// //                                 ),
// //                                 Text(quantities[index].toString()),
// //                                 IconButton(
// //                                   onPressed: () {
// //                                     setState(() {
// //                                       quantities[index]++;
// //                                     });
// //                                   },
// //                                   icon: const Icon(Icons.add),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                       );
// //                     },
// //                   ),

// //               const SizedBox(height: 16),
// //               const Text(
// //                 "------------------------------------------------------------------------------------",
// //                 style: TextStyle(color: Color(0xFFFFFFFF33)),
// //               ),
// //               const Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Text(
// //                     "Delivery Charges",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w400,
// //                       fontSize: 14,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                   Text(
// //                     "₹49",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w400,
// //                       fontSize: 14,
// //                       color: Colors.white,
// //                     ),
// //                   )
// //                 ],
// //               ),
// //               const Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Text(
// //                     "Taxes",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w400,
// //                       fontSize: 14,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                   Text(
// //                     "₹64.87",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w400,
// //                       fontSize: 14,
// //                       color: Colors.white,
// //                     ),
// //                   )
// //                 ],
// //               ),
// //               const Text(
// //                 "------------------------------------------------------------------------------------",
// //                 style: TextStyle(color: Color(0xFFFFFFFF33)),
// //               ),
// //               const Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Text(
// //                     "Grand Total",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w400,
// //                       fontSize: 14,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                   Text(
// //                     "₹1009.87",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w400,
// //                       fontSize: 14,
// //                       color: Colors.white,
// //                     ),
// //                   )
// //                 ],
// //               ),
// //               const SizedBox(height: 12),
// //               Container(
// //                 width: double.infinity,
// //                 height: 45,
// //                 decoration: const BoxDecoration(
// //                   borderRadius: BorderRadius.all(
// //                     Radius.circular(10),
// //                   ),
// //                   color: Color(0xFFEFE3C8),
// //                 ),
// //                 child: const Align(
// //                   alignment: Alignment.center,
// //                   child: Text(
// //                     "PAY NOW",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.w600,
// //                       fontSize: 16,
// //                       color: Color(0xFF4A2B29),
// //                     ),
// //                   ),
// //                 ),
// //               ),),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:homework4/brew_deja_db.dart'; // dbProducts degan ro'yxat shu yerda bo'lishi kerak

// class OrderTab extends StatefulWidget {
//   const OrderTab({super.key});

//   @override
//   State<OrderTab> createState() => _OrderTabState();
// }

// class _OrderTabState extends State<OrderTab> {
//   List<int> quantities = [];

//   @override
//   void initState() {
//     super.initState();
//     // Mahsulotlar ro'yxati bo'yicha quantitylar ro'yxatini tayyorlash
//     quantities = List<int>.filled(dbProducts.length, 1);
//   }

//   double calculateTotal() {
//     double total = 0;
//     for (int i = 0; i < dbProducts.length; i++) {
//       double price = double.tryParse(dbProducts[i]['price'].toString()) ?? 0;
//       total += price * quantities[i];
//     }
//     return total;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff201520),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'Cart',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//               const SizedBox(height: 16),
//               dbProducts.isNotEmpty
//                   ? const Center(
//                       child: Text(
//                         'No ordered coffees',
//                         style: TextStyle(fontSize: 24.0, color: Colors.white),
//                       ),
//                     )
//                   : Expanded(
//                       child: ListView.builder(
//                         itemCount: dbProducts.length,
//                         itemBuilder: (context, index) {
//                           final product = dbProducts[index];
//                           return Card(
//                             color: Colors.blue.shade200,
//                             child: ListTile(
//                               leading: Image(
//                                 image: NetworkImage(product['image']),
//                                 width: 50,
//                               ),
//                               title: Text(product['name']),
//                               subtitle: Text('₹${product['price']}'),
//                               trailing: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(8),
//                                   color: const Color(0xFFFFFFFF14),
//                                 ),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           if (quantities[index] > 1) {
//                                             quantities[index]--;
//                                           }
//                                         });
//                                       },
//                                       icon: const Icon(Icons.remove),
//                                     ),
//                                     Text(quantities[index].toString()),
//                                     IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           quantities[index]++;
//                                         });
//                                       },
//                                       icon: const Icon(Icons.add),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
// const SizedBox(height: 16),
// const Divider(color: Color(0xFFFFFFFF33)),
// const Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Text("Delivery Charges",
//         style: TextStyle(color: Colors.white, fontSize: 14)),
//     Text("₹49",
//         style: TextStyle(color: Colors.white, fontSize: 14)),
//   ],
// ),
// const SizedBox(height: 4),
// const Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Text("Taxes",
//         style: TextStyle(color: Colors.white, fontSize: 14)),
//     Text("₹64.87",
//         style: TextStyle(color: Colors.white, fontSize: 14)),
//   ],
// ),
// const Divider(color: Color(0xFFFFFFFF33)),
// const Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Text("Grand Total",
//         style: TextStyle(color: Colors.white, fontSize: 16)),
//     Text("₹1009.87",
//         style: TextStyle(
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.bold)),
//   ],
// ),
// const SizedBox(height: 12),
// Container(
//   width: double.infinity,
//   height: 45,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(10),
//     color: const Color(0xFFEFE3C8),
//   ),
//   child: const Center(
//     child: Text(
//       "PAY NOW",
//       style: TextStyle(
//         fontWeight: FontWeight.w600,
//         fontSize: 16,
//         color: Color(0xFF4A2B29),
//       ),
//     ),
//   ),
// ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/*import 'package:flutter/material.dart';

import 'package:homework4/brew_deja_db.dart';

class OrederPage extends StatefulWidget {
  const OrederPage({super.key});

  @override
  State<OrederPage> createState() => _OrederPageState();
}

class _OrederPageState extends State<OrederPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff201520),
      appBar: AppBar(
        backgroundColor: const Color(0xff201520),
        title: const Text(
          'Cart',
          style: TextStyle(backgroundColor: Colors.white),
        ),
      ),
      body: dbProducts.isEmpty
          ? const Center(
              child:
                  Text('No favourite foods', style: TextStyle(fontSize: 24.0)),
            )
          : ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: dbFavourites.length,
                itemBuilder: (context, index) {
                  final product = dbFavourites[index];
                  return Card(
                    color: Colors.blue.shade200,
                    child: ListTile(
                      leading: Image(image: NetworkImage(product['image'])),
                      title: Text(product['name']),
                      subtitle: Text(product['price'].toString()),
                      trailing: IconButton(
                          onPressed: () {
                            dbFavourites.remove(product);
                            setState(() {});
                          },
                          Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (quantities[index] > 1) {
                                            quantities[index]--;
                                          }
                                        });
                                      },
                                      icon: const Icon(Icons.remove),
                                    ),
                                    Text(quantities[index].toString()),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          quantities[index]++;
                                        });
                                      },
                                      icon: const Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    
const SizedBox(height: 16),
const Divider(color: Color(0xFFFFFFFF33)),
const Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Delivery Charges",
        style: TextStyle(color: Colors.white, fontSize: 14)),
    Text("₹49",
        style: TextStyle(color: Colors.white, fontSize: 14)),
  ],
),
const SizedBox(height: 4),
const Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Taxes",
        style: TextStyle(color: Colors.white, fontSize: 14)),
    Text("₹64.87",
        style: TextStyle(color: Colors.white, fontSize: 14)),
  ],
),
const Divider(color: Color(0xFFFFFFFF33)),
const Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Grand Total",
        style: TextStyle(color: Colors.white, fontSize: 16)),
    Text("₹1009.87",
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold)),
  ],
),
const SizedBox(height: 12),
Container(
  width: double.infinity,
  height: 45,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: const Color(0xFFEFE3C8),
  ),
  child: const Center(
    child: Text(
      "PAY NOW",
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Color(0xFF4A2B29),
      ),
    ),
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}
                    ),
                  );
                },
              )
               */
// Column(
//     children: [
//       ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemCount: dbProducts.length,
//         itemBuilder: (context, index) {
//           final product = dbProducts[index];
//           return Card(
//             color: const Color(0xff201520).withValues(alpha: .3),
//             child: ListTile(
//               leading: Image(image: NetworkImage(product['image'])),
//               title: Text(product['name']),
//               subtitle: Text(product['price'].toString()),
//               trailing: IconButton(
//                   onPressed: () {
//                     dbProducts.remove(product);
//                     setState(() {});
//                   },
//                   icon: const Icon(
//                     Icons.favorite,
//                     color: Colors.red,
//                   )),
//             ),
//           );
//         },
//       ),
//       const SizedBox(height: 16),
//       const Divider(color: Color(0xFFFFFFFF33)),
//       const Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text("Delivery Charges",
//               style: TextStyle(color: Colors.white, fontSize: 14)),
//           Text("₹49",
//               style: TextStyle(color: Colors.white, fontSize: 14)),
//         ],
//       ),
//       const SizedBox(height: 4),
//       const Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text("Taxes",
//               style: TextStyle(color: Colors.white, fontSize: 14)),
//           Text("₹64.87",
//               style: TextStyle(color: Colors.white, fontSize: 14)),
//         ],
//       ),
//       const Divider(color: Color(0xFFFFFFFF33)),
//       const Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text("Grand Total",
//               style: TextStyle(color: Colors.white, fontSize: 16)),
//           Text("₹1009.87",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold)),
//         ],
//       ),
//       const SizedBox(height: 12),
//       Container(
//         width: double.infinity,
//         height: 45,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: const Color(0xFFEFE3C8),
//         ),
//         child: const Center(
//           child: Text(
//             "PAY NOW",
//             style: TextStyle(
//               fontWeight: FontWeight.w600,
//               fontSize: 16,
//               color: Color(0xFF4A2B29),
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),

import 'package:flutter/material.dart';
import 'package:homework4/brew_deja_db.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<int> quantities = [];

@override
void initState() {
  super.initState();
  quantities = List.filled(dbCart.length, 1);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff201520),
      appBar: AppBar(
        backgroundColor: const Color(0xff201520),
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: dbFavourites.isEmpty
          ? const Center(
              child: Text(
                'No coffees',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: dbFavourites.length,
                    itemBuilder: (context, index) {
                      final product = dbFavourites[index];
                      return Card(
                        color: Colors.white.withValues(alpha: .1),
                        child: ListTile(
                          leading: Image(image: NetworkImage(product['image'],)),
                          title: Text(product['name'],style: const TextStyle(   color: Colors.white),),
                          subtitle: Text("₹${product['price'].toString()}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (quantities[index] > 1) {
                                      quantities[index]--;
                                    }
                                  });
                                },
                                icon: const Icon(Icons.remove),
                              ),
                              Text(quantities[index].toString()),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    quantities[index]++;
                                  });
                                },
                                icon: const Icon(Icons.add),
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  setState(() {
                                    dbFavourites.removeAt(index);
                                    quantities.removeAt(index);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Divider(color: Color(0xFFFFFFFF33)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Charges",
                              style: TextStyle(color: Colors.white)),
                          Text("₹49", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Taxes", style: TextStyle(color: Colors.white)),
                          Text("₹64.87", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Divider(color: Color(0xFFFFFFFF33)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Grand Total",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Text("₹1009.87",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFEFE3C8),
                  ),
                  child: const Center(
                    child: Text(
                      "PAY NOW",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFF4A2B29),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
