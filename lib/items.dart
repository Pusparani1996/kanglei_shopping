//import 'dart:html';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kanglei_shopping/cart_model.dart';

import 'package:kanglei_shopping/itemcartpage.dart';

import 'package:kanglei_shopping/main.dart';
import 'package:kanglei_shopping/pages/CustomSearch.dart';
import 'package:kanglei_shopping/pages/searchpage.dart';

class ProductItems extends StatefulWidget {
  ProductItems({Key? key, required this.itemlist}) : super(key: key);
  final List<Map<String, dynamic>> itemlist;

  @override
  State<ProductItems> createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItems> {
  Box<CardModel>? dataBox;

  @override
  void initState() {
    super.initState();
    dataBox = Hive.box<CardModel>(shoppingbox);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            // child: Badge(
            //   badgeContent: const Text(
            //     "0",
            //     style: TextStyle(color: Colors.white),
            //   ),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItemDetailPage()));
                },
                icon: const Icon(Icons.shopping_cart_outlined)),
            //  ),
          ),
          IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SearchPage()));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 3,
              childAspectRatio: 2 / 3.9),
          itemCount: widget.itemlist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      //width:MediaQuery.of(context).size.height*0.3 ,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(widget.itemlist[index]["image"]),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(children: [
                      Text(widget.itemlist[index]["item_name"]),
                      //getpercentage(index),
                      Text(widget.itemlist[index]["offer"]),
                      Text(widget.itemlist[index]["offer_price"].toString()),
                      TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (ctx) => SizedBox(
                                      width:
                                          50, // MediaQuery.of(context).size.width*0.1,
                                      height:
                                          10, //MediaQuery.of(context).size.height*0.1,
                                      child: AlertDialog(
                                        title: const Text("Status"),
                                        content: const Text("Added to Cart"),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(ctx).pop();
                                            },
                                            child: Container(
                                              //color: Colors.green,
                                              padding: const EdgeInsets.all(14),
                                              child: const Text(
                                                "OK",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.green),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ));

                            dataBox?.add(CardModel(
                                actualPrice: widget.itemlist[index]
                                    ["actual_price"],
                                id: widget.itemlist[index]["id"],
                                image: widget.itemlist[index]["image"],
                                itemName: widget.itemlist[index]["item_name"],
                                quatity: 1,
                                unitTag: '3'));
                          },
                          style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              elevation: 20,
                              shadowColor: Colors.blue,
                              backgroundColor: Colors.red),
                          child: const Text("Add to cart",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white)))
                    ]),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
