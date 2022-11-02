import 'package:flutter/material.dart';
import 'package:kanglei_shopping/pages/scancouple.page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  final double coverheight = 190;
  final double profileheight = 80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 196, 191, 191),
          title: Text("Profile"),
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            designstack(),
            designbody(context),
          ],
        ));
  }

  Widget coverImage() => Container(
        width: double.infinity,
        height: coverheight,
        child: Image.asset(
          "assets/images/profilecover.jpg",
          fit: BoxFit.fill,
        ),
      );
  Widget profileImage() => Container(
        child: CircleAvatar(
          radius: profileheight,
          backgroundImage: AssetImage("assets/images/profileimage.jpg"),
        ),
      );
  Widget designstack() {
    final bottom = profileheight / 0.7;
    final top = coverheight -
        profileheight /
            1.3; // used for positoin of profile imager over cover image
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(margin: EdgeInsets.only(bottom: bottom), child: coverImage()),
        Positioned(
            top: top, //position of profile image
            child: profileImage()),
      ],
    );
  }

  Widget designbody(dc) {
    return Container(
      child: Column(
        children: [
          const Text(
            "Heisnam Pusparani",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromARGB(255, 236, 205, 205)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Your Orders",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromARGB(255, 236, 205, 205)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Buy Again",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Color.fromARGB(255, 244, 241, 241),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 25,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Address",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Thanga Heisnam ",
                          style: TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Color.fromARGB(255, 244, 241, 241),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.help_outline_sharp,
                      size: 25,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Help Center",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Help regarding your recent purchases",
                          style: TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: const Color.fromARGB(255, 244, 241, 241),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Your Wishlist",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Your most love styles",
                          style: TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
              height: 15,
              width: double.infinity,
              color: const Color.fromARGB(255, 226, 223, 223),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  dc, MaterialPageRoute(builder: (dc) => ScanCouplePage()));
            },
            child: Container(
              height: 60,
              color: const Color.fromARGB(255, 244, 241, 241),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.qr_code),
                  ),
                  Text("Scan for couple",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
              height: 15,
              width: double.infinity,
              color: const Color.fromARGB(255, 226, 223, 223),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "ABOUT US",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "TERM OF USED",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "PRIVACY POLICY",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              )),
        ],
      ),
    );
  }
}
