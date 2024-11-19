// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';

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
                    onTap: null, child: const Icon(Icons.arrow_back)),
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
          Column(
            children: [
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
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xffd5d5d5),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Textille",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xffd5d5d5),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Textille",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xffd5d5d5),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Textille",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xffd5d5d5),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Textille",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xffd5d5d5),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Textille",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xffd5d5d5),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Textille",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(11.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Populars brands',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text('View all'),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "data:image/jpeg;base64,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"))),
                    child: const Center(
                      child: Text(
                        'Koparab',
                        style:
                            TextStyle(color: Color(0xffffffff), fontSize: 25),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "data:image/jpeg;base64,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"))),
                    child: const Center(
                      child: Text(
                        'Koparab',
                        style:
                            TextStyle(color: Color(0xffffffff), fontSize: 25),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Permet un affichage constant
        selectedItemColor:
            const Color(0xff000000), // Couleur des éléments sélectionnés
        unselectedItemColor:
            Colors.grey, // Couleur des éléments non sélectionnés
        onTap: (index) {
          // Logique pour gérer le changement de page
          print("Index sélectionné : $index");
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
