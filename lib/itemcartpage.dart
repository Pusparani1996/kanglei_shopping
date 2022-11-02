import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:kanglei_shopping/model/cart_model.dart';
import 'package:kanglei_shopping/main.dart';

import 'cart_model.dart';

// SHOPPING CART PAGE

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({Key? key}) : super(key: key);
  // final Map<String, dynamic> data;
  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  final List<ItemDetailPage> addfunctions = [];
  int itemcount = 0;
  @override
  // void dispose() {
  //   Hive.box("shopping_box").close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    //var data;
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: Hive.openBox<CardModel>(shoppingbox),
        builder: (context, snapshot) {
          return ValueListenableBuilder(
            valueListenable: Hive.box<CardModel>(shoppingbox).listenable(),
            builder: (context, Box<CardModel> items, _) {
              List<int> keys = items.keys.cast<int>().toList();

              if (items.values.isEmpty) {
                return const Text('data is empty');
              } else {
                // log(items.values.toString());
                var d = items.values;

                var data = d.map((e) {
                  return e;
                }).toList();
                // return Text(items.values.toString());
                return ListView.separated(
                  separatorBuilder: (_, index) => const Divider(),

                  itemCount: keys.length,
                  //  separatorBuilder: (_, index) => const Divider(),
                  //  itemCount: data.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  //itemCount: box.values.length,
                  itemBuilder: (context, index) {
                    final dynamic key = keys[index];
                    final CardModel todo = items.get(key) as CardModel;
                    //final CardModel data = items.get(d) as CardModel;
                    //var item = box.getAt(index);

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(todo.image))),
                        ),
                        Column(
                          children: [
                            //Text(todo.id.toString()),
                            Text(todo.itemName),
                            Text(todo.actualPrice.toString()),
                            Text(todo.quatity.toString()),
                            Text(todo.unitTag),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.delete,
                                  size: 20,
                                  color: Colors.red[900],
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.1,
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                //color: Colors.green[900]
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() => itemcount--);
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                        color: Color.fromARGB(255, 5, 121, 9),
                                        size: 20,
                                      )),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3, vertical: 2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Colors.white),
                                    child: Text(
                                      itemcount.toString(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          itemcount++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        color: Color.fromARGB(255, 2, 125, 6),
                                        size: 20,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              }
            },
          );
        },
      ),
    );
  }
}
