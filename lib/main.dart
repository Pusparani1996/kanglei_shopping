import 'package:flutter/material.dart';
import 'package:kanglei_shopping/cart_model.dart';
//import 'package:kanglei_shopping/model/cart_model.dart';
//import 'package:kanglei_shopping/pages/itemcartpage.dart';
import 'package:kanglei_shopping/pages/home_page.dart';
//import 'package:kanglei_shopping/pages/offerpage.dart';
//import 'package:kanglei_shopping/pages/profilepage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'itemcartpage.dart';
import 'offerpage.dart';
import 'profilepage.dart';

String shoppingbox = "boxname";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  Hive.registerAdapter(CardModelAdapter());
  await Hive.openBox<CardModel>(shoppingbox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Kanglei Shopping'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screen = [
    HomePage(),
    const OfferPage(),
    const ItemDetailPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer_outlined), label: "Offer"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
      body: screen[currentIndex],
    );
  }
}
