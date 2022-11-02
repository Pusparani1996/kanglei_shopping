// import 'package:flutter/material.dart';
// //import 'package:kanglei_shopping/pages/items.dart';

// import 'items.dart';

// class Categoriespage extends StatefulWidget {
//   final List<Map<String, dynamic>> categories;

//   const Categoriespage({Key? key, required this.categories}) : super(key: key);

//   @override
//   State<Categoriespage> createState() => _CategoriespageState();
// }

// final controller = PageController(viewportFraction: 0.8, keepPage: true);
// //list of items
// List<Map<String, dynamic>> itemlist = [
//   {
//     //FASHION CATEGORY

//     "itemID": [
//       //men casual pant
//       {
//         "id": 1,
//         "item_name": "Pant",
//         "image": "assets/images/products/men/mencasualpant/casual.jpg",
//         "actual_price": 500,
//         "offer": "10% OFF",
//         "offer_price": 450,
//       },
//       {
//         "id": 2,
//         "item_name": "Pant",
//         "image": "assets/images/products/men/mencasualpant/casual1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300,
//       },
//       {
//         "id": 3,
//         "item_name": " Pant",
//         "image": "assets/images/products/men/mencasualpant/casual2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300
//       },
//       {
//         "id": 4,
//         "item_name": "Pant ",
//         "image": "assets/images/products/men/mencasualpant/casual3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300
//       },
//       {
//         "id": 5,
//         "item_name": " Jeans",
//         "image": "assets/images/products/men/mencasualpant/casual4.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300
//       },
//       {
//         "id": 6,
//         "item_name": "Pant",
//         "image": "assets/images/products/men/mencasualpant/casual5.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300
//       },
//       {
//         "id": 7,
//         "item_name": "Light Green Pant",
//         "image": "assets/images/products/men/mencasualpant/casual6.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300
//       },
//       {
//         "id": 8,
//         "item_name": "Gray Pant",
//         "image": "assets/images/products/men/mencasualpant/casual7.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300
//       },
//       {
//         "id": 9,
//         "item_name": "Blue Jeans",
//         "image": "assets/images/products/men/mencasualpant/casual8.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300
//       },
//       {
//         "id": 10,
//         "item_name": "Cotton Pant",
//         "image": "assets/images/products/men/mencasualpant/casual9.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300
//       },
//       {
//         "id": 11,
//         "item_name": "Brown Pant",
//         "image": "assets/images/products/men/mencasualpant/casual10.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 300
//       },
//     ],
//   },
//   {
//     //men casual Shirt
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Black T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Gray T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": "Red T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt4.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 5,
//         "item_name": "Yellow T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt5.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 6,
//         "item_name": "Blue T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt6.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 7,
//         "item_name": "Green T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt7.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 8,
//         "item_name": "T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt8.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 9,
//         "item_name": "Red T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt9.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 10,
//         "item_name": "T-Shirt",
//         "image": "assets/images/products/men/mencasualshirt/tshirt10.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       }
//     ],
//   },
//   //men handloom
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Muga Khudei",
//         "image": "assets/images/products/men/menhandloom/khudei.png",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Pheijom",
//         "image": "assets/images/products/men/menhandloom/pheijom5.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " Morang Salai Pheijom ",
//         "image": "assets/images/products/men/menhandloom/pheijom1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " Oneply Khudei",
//         "image": "assets/images/products/men/menhandloom/khudei2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 5,
//         "item_name": "Leisangthem salai Pheijom",
//         "image": "assets/images/products/men/menhandloom/pheijom2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 6,
//         "item_name": "Angom Salai Pheijom",
//         "image": "assets/images/products/men/menhandloom/pheijom3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 7,
//         "item_name": "Pheijom",
//         "image": "assets/images/products/men/menhandloom/pheijom4.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 8,
//         "item_name": "Oneply Khudei",
//         "image": "assets/images/products/men/menhandloom/Khudei1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 9,
//         "item_name": "Pheijom",
//         "image": "assets/images/products/men/menhandloom/pheijom6.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 10,
//         "item_name": "Pheijom",
//         "image": "assets/images/products/men/menhandloom/pheijom7.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       }
//     ],
//   },
//   //men shirt
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Navy red Shirt",
//         "image": "assets/images/products/men/menshirt/navyred.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Pink Shirt",
//         "image": "assets/images/products/men/menshirt/pink.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " Blue Shirt ",
//         "image": "assets/images/products/men/menshirt/shirt.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " White Shirt",
//         "image": "assets/images/products/men/menshirt/white.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 5,
//         "item_name": "Green Men Shirt",
//         "image": "assets/images/products/men/menshirt/shirt1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 6,
//         "item_name": "Shirts",
//         "image": "assets/images/products/men/menshirt/shirt2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 7,
//         "item_name": "Lightblue Shirt",
//         "image": "assets/images/products/men/menshirt/shirt3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 8,
//         "item_name": "Red Shirt",
//         "image": "assets/images/products/men/menshirt/shirt4.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 9,
//         "item_name": "Shirts",
//         "image": "assets/images/products/men/menshirt/shirt5.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 10,
//         "item_name": "Check Shirt",
//         "image": "assets/images/products/men/menshirt/shirt6.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       }
//     ],
//   },
//   // Men FormalPant
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Black Pant",
//         "image": "assets/images/products/men/menpant/black.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Grey Pant",
//         "image": "assets/images/products/men/menpant/brown.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " White Pant ",
//         "image": "assets/images/products/men/menpant/formal1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " Blue Pant",
//         "image": "assets/images/products/men/menpant/formal10.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//     ],
//   },
//   // WoMen Manipur Handloom
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Khuangphi Mapannaibi",
//         "image": "assets/images/products/women/womenhandloom/mapannaibi1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Muga Suit",
//         "image": "assets/images/products/women/womenhandloom/suit2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " Thambal Leikhok ",
//         "image":
//             "assets/images/products/women/womenhandloom/thamballeikhok.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " Pheibak Muga",
//         "image": "assets/images/products/women/womenhandloom/panek.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//     ],
//   },
//   // WoMen Kurti
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Khuangphi Mapannaibi",
//         "image": "assets/images/products/women/womenkurti/kurti1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Muga Suit",
//         "image": "assets/images/products/women/womenkurti/kurti2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " Thambal Leikhok ",
//         "image": "assets/images/products/women/womenkurti/kurti3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " Pheibak Muga",
//         "image": "assets/images/products/women/womenkurti/kurti8.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//     ],
//   },
//   //WOMAN PANT
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Khuangphi Mapannaibi",
//         "image": "assets/images/products/women/womenpant/formal1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Muga Suit",
//         "image": "assets/images/products/women/womenpant/formal2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " Thambal Leikhok ",
//         "image": "assets/images/products/women/womenpant/formal3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " Pheibak Muga",
//         "image": "assets/images/products/women/womenpant/formal4.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//     ],
//   },
//   //WOMEN SHIRT
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Khuangphi Mapannaibi",
//         "image": "assets/images/products/women/womenshirt/casual2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Muga Suit",
//         "image": "assets/images/products/women/womenshirt/casual5.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " Thambal Leikhok ",
//         "image": "assets/images/products/women/womenshirt/casual7.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " Pheibak Muga",
//         "image": "assets/images/products/women/womenshirt/casual3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//     ],
//   },
//   //BOYS
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Khuangphi Mapannaibi",
//         "image": "assets/images/products/boys/boy1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Muga Suit",
//         "image": "assets/images/products/boys/boy2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " Thambal Leikhok ",
//         "image": "assets/images/products/boys/boy3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " Pheibak Muga",
//         "image": "assets/images/products/boys/boy4.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//     ],
//   },
//   //GIRLS
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Khuangphi Mapannaibi",
//         "image": "assets/images/products/girls/girl1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Muga Suit",
//         "image": "assets/images/products/girls/girl2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " Thambal Leikhok ",
//         "image": "assets/images/products/girls/girl3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " Pheibak Muga",
//         "image": "assets/images/products/girls/girl4.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//     ],
//   },
//   //GIRLS
//   {
//     "itemID": [
//       {
//         "id": 1,
//         "item_name": "Khuangphi Mapannaibi",
//         "image": "assets/images/products/girls/girl1.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 2,
//         "item_name": "Muga Suit",
//         "image": "assets/images/products/girls/girl2.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 3,
//         "item_name": " Thambal Leikhok ",
//         "image": "assets/images/products/girls/girl3.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//       {
//         "id": 4,
//         "item_name": " Pheibak Muga",
//         "image": "assets/images/products/girls/girl4.jpg",
//         "actual_price": 450,
//         "offer": "20% OFF",
//         "offer_price": 3000
//       },
//     ],
//   },
// ];

// class _CategoriespageState extends State<Categoriespage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(Icons.arrow_back)),
//       ),
//       body: Column(
//         children: [
//           const Expanded(
//             flex: 1,
//             child: Card(
//               child: ListTile(
//                 leading: Icon(Icons.search),
//                 title: TextField(
//                   decoration: InputDecoration(
//                       hintText: "Search", border: InputBorder.none),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 9,
//             child: ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 itemCount: widget.categories.length,
//                 itemBuilder: (c, i) {
//                   return Padding(
//                     padding: const EdgeInsets.all(5.0),
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   ProductItems(itemlist: itemlist[i]["itemID"]),
//                             ));
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 7),
//                         child: SizedBox(
//                           height: MediaQuery.of(context).size.height * 0.1,
//                           width: MediaQuery.of(context).size.width,
//                           child: Row(
//                             children: [
//                               Container(
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.2,
//                                 width: MediaQuery.of(context).size.width * 0.2,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     image: DecorationImage(
//                                         image: AssetImage(
//                                             widget.categories[i]["image"]),
//                                         fit: BoxFit.fill)),
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 10.0, top: 3),
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       widget.categories[i]["product_item"],
//                                       style: const TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15),
//                                     ),
//                                     Text(widget.categories[i]["description"])
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//           )
//         ],
//       ),
//       //  )
//     );
//   }
// }
