// // FOR SEARCH FUNCTION

// import 'dart:developer';

// import 'package:flutter/material.dart';

// class CustomSearch extends SearchDelegate {
//   final List<Map<String, dynamic>> itemlist;

//   CustomSearch({required this.itemlist});
//   final List<String> allkey = [];
//   final List<String> allvalue = [];
//   final List<String> allitem_name = [];

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(
//           onPressed: () {
//             query = "";
//           },
//           icon: const Icon(Icons.clear))
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           close(context, null);
//         },
//         icon: Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var item in itemlist) {
//       // item.forEach((key, value) {
//       //   allkey.add(key);
//       //   allvalue.add(value);
//       // });
//       log(allkey.toString());
//       if (item.toString().contains(query.toLowerCase())) {
//         matchQuery.add(item.toString());
//       }
//     }
//     return ListView.builder(
//         itemCount: matchQuery.length,
//         itemBuilder: (context, index) {
//           var result = matchQuery[index];
//           return ListTile(
//             title: Text(result),
//           );
//         });
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var item in itemlist) {
//       if (item.toString().contains(query.toLowerCase())) {
//         matchQuery.add(item.toString());
//       }
//     }
//     return ListView.builder(
//         itemCount: matchQuery.length,
//         itemBuilder: (context, index) {
//           var result = matchQuery[index];
//           return ListTile(
//             title: Text(result),
//           );
//         });
//   }
// }
