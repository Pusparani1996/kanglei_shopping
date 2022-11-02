import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kanglei_shopping/categoriespage.dart';
import 'package:kanglei_shopping/fakedata/fake.data.dart';
import 'package:kanglei_shopping/items.dart';
//import 'package:kanglei_shopping/pages/categoriespage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final itemlist = FakeData.fakedata;

  //carousel slider
  List<Map<String, dynamic>> img = [
    {"image": "assets/images/fashion.jpg", "title": "Fashion"},
    {"image": "assets/images/electronics.jpg", "title": "Electronics"},
    {
      "image": "assets/images/books.jpg",
      "title": "Books",
    },
    {
      "image": "assets/images/skincare.jpg",
      "title": "Skincare",
    },
    {
      "image": "assets/images/grocery.jpg",
      "title": "Grocery",
    },
    {
      "image": "assets/images/utensils.jpg",
      "title": "Utensils",
    },
    {"image": "assets/images/footwear.jpg", "title": "Footwear"},
  ];

  List<String> imglist = [
    "assets/images/plum.jpg",
    "assets/images/menshirt_offer.jpg",
    "assets/images/cookingoil_offer.jpg",
    "assets/images/kurti_offer.jpg",
    "assets/images/phone_offer.jpg",
    "assets/images/printer_offer.jpg",
  ];
  List<String> imglist1 = [
    "assets/images/men.jpg",
    "assets/images/women.jpg",
    "assets/images/kids.jpg",
    "assets/images/skincare.jpg",
    "assets/images/utensils.jpg",
    "assets/images/accessories.jpg",
    "assets/images/footwear.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kanglei Shopping",
          style: style.bodyLarge,
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: img.length,
                  itemBuilder: (c, i) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          right: 10, top: 7, left: 2, bottom: 2),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              //log(img[i].toString());
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductItems(
                                          itemlist: itemlist[i]["itemID"])));
                            },
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage(img[i]["image"].toString()),
                            ),
                          ),
                          Text(img[i]["title"])
                        ],
                      ),
                    );
                  })),
          Expanded(
            flex: 3,
            child: Center(
              child: CarouselSlider.builder(
                  itemCount: imglist.length,
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                  ),
                  itemBuilder: (context, itemIndex, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(imglist[itemIndex].toString()),
                              fit: BoxFit.fill,
                            )),
                      ),
                    );
                  }),
            ),
          ),
          Expanded(
              flex: 3,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                  ),
                  itemCount: imglist1.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.amber,
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
