// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outils/PageHome.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int activeIndex1 = 0;
  final List<String> images1 = [
    'assets/verre1.png',
    'assets/tasse.png',
    'assets/plant.png',
  ];
  int activeIndex2 = 0;
  final List<String> images2 = [
    'assets/canapé.png',
    'assets/light.png',
    'assets/tasse.png',
  ];
  bool card1 = false, card2 = false;
  Widget favorite(bool i) {
    if (i == true) {
      return const Icon(Icons.favorite, color: Colors.red);
    } else {
      return const Icon(Icons.favorite_border);
    }
  }

  Widget buildImageCard(String imagePath, String label) {
    return Container(
      height: 150,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.place,
                        color: Color(0xff3fca75),
                        size: 35,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Express delivery',
                            style: GoogleFonts.onest(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                          Text(
                            'Leipzig Street, 21',
                            style:
                                GoogleFonts.onest(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications_outlined,
                    size: 35,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xffF3F3F7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 103, 102, 102),
                      size: 30,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontSize: 23.0,
                            color: Color(0xffC1C1C3),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Pagehome()),
                          );
                        },
                        child: buildImageCard("assets/home.jpg", "Home")),
                    const SizedBox(width: 10),
                    buildImageCard("assets/clothes.jpeg", "Clothes"),
                    const SizedBox(width: 10),
                    buildImageCard("assets/div-3-page1.jpg", "Electronics"),
                    const SizedBox(width: 10),
                    buildImageCard("assets/city.jpeg", "city"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                    color: const Color(0xff000000),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Down payment 0%",
                          style: GoogleFonts.onest(
                              color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Action from 1-30 April',
                          style: GoogleFonts.onest(
                              color: Colors.grey, fontSize: 13),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: const Color(0xffffffff),
                      ),
                      child: Text(
                        "LokkeStore",
                        style: GoogleFonts.onest(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 15, right: 15, bottom: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xff000000)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Text(
                          "For you",
                          style: GoogleFonts.onest(
                              color: const Color(0xffffffff), fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xfff3f3f7)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage("vector.jpg"),
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Price of the day",
                              style: GoogleFonts.onest(
                                  color: const Color(0xff000000), fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 17),
                  GestureDetector(
                    onTap: null,
                    child: const Row(
                      children: [
                        Text(
                          'View all',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Stack(
                          children: [
                            Container(
                              height: 220,
                              width: 185,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xfff3f3f7),
                              ),
                              child: Image.asset(images1[activeIndex1]),
                            ),
                            Positioned(
                                right: 10,
                                top: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      card2 = !card2;
                                    });
                                  },
                                  child: favorite(card2),
                                )),
                            Positioned(
                                right: 10,
                                bottom: 10,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => {
                                        setState(() {
                                          activeIndex1 = 0;
                                        }),
                                      },
                                      child: Container(
                                        height: 10,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color(0xffc5c5c5),
                                        ),
                                        width: 10,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: () => {
                                        setState(() {
                                          activeIndex1 = 1;
                                        }),
                                      },
                                      child: Container(
                                        height: 10,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color(0xffc5c5c5),
                                        ),
                                        width: 10,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: () => {
                                        setState(() {
                                          activeIndex1 = 2;
                                        }),
                                      },
                                      child: Container(
                                        height: 10,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color(0xffc5c5c5),
                                        ),
                                        width: 10,
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Glass, light blue",
                        style: GoogleFonts.onest(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "4€",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Stack(
                          children: [
                            Container(
                              height: 220,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xfff3f3f7),
                              ),
                              child: Image.asset(images2[activeIndex2]),
                            ),
                            Positioned(
                                right: 10,
                                top: 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      card1 = !card1;
                                    });
                                  },
                                  child: favorite(card1),
                                )),
                            Positioned(
                                right: 10,
                                bottom: 10,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => {
                                        setState(() {
                                          activeIndex2 = 0;
                                        }),
                                      },
                                      child: Container(
                                        height: 10,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color(0xff000000),
                                        ),
                                        width: 10,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: () => {
                                        setState(() {
                                          activeIndex2 = 1;
                                        }),
                                      },
                                      child: Container(
                                        height: 10,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color(0xffc5c5c5),
                                        ),
                                        width: 10,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    GestureDetector(
                                      onTap: () => {
                                        setState(() {
                                          activeIndex2 = 2;
                                        }),
                                      },
                                      child: Container(
                                        height: 10,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color(0xffc5c5c5),
                                        ),
                                        width: 10,
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Sweivei  chair",
                        style: GoogleFonts.onest(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "120€",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff000000),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          print("Index sélectionné : $index");
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}
