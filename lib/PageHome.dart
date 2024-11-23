// ignore_for_file: file_names, avoid_print, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outils/Page.dart';
import 'package:outils/Page3.dart';

class Pagehome extends StatefulWidget {
  const Pagehome({super.key});

  @override
  State<Pagehome> createState() => _PagehomeState();
}

class _PagehomeState extends State<Pagehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page1()),
                      );
                    },
                    child: const Icon(Icons.arrow_back)),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  'Home goods',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Page3()),
                            );
                          },
                          child: Container(
                            width: 200,
                            height: 130,
                            decoration: BoxDecoration(
                                color: const Color(0xfff3f3f7),
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "Textille",
                              style: GoogleFonts.onest(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 15,
                            child: SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('assets/coussin.png')))
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xfff3f3f7),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Dishes",
                            style: GoogleFonts.onest(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 15,
                            child: SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('assets/tasse.png')))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xfff3f3f7),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Furnitures",
                            style: GoogleFonts.onest(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 15,
                            child: SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('assets/fauteuille.png')))
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xfff3f3f7),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Light",
                            style: GoogleFonts.onest(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            top: 1,
                            right: 15,
                            child: SizedBox(
                                width: 90,
                                height: 90,
                                child: Image.network('assets/light.png')))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xfff3f3f7),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Decor",
                            style: GoogleFonts.onest(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 15,
                            child: SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('assets/decor.png')))
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xfff3f3f7),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Plants",
                            style: GoogleFonts.onest(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 15,
                            child: SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('assets/plant.png')))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Populars brands',
                  style: GoogleFonts.onest(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Row(
                  children: [
                    Text('View all'),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/lamp.jpg",
                            width: 250,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "KopparbjÖrk",
                            style: GoogleFonts.onest(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black.withOpacity(0.5),
                                  offset: const Offset(2, 2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 22),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/canap.jpg",
                            width: 250,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "IVARIGA",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black.withOpacity(0.5),
                                  offset: const Offset(2, 2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
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
