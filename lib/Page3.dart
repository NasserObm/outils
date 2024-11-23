// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outils/PageHome.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int activeIndex = 0;
  final List<String> images = [
    'assets/panda.jpg',
    'assets/room.jpg',
    'assets/park.jpeg',
  ];
  bool card = false;
  Widget favorite(bool i) {
    if (i == true) {
      return const Icon(Icons.favorite, color: Colors.red, size: 30);
    } else {
      return const Icon(
        Icons.favorite_border,
        size: 30,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Pagehome()),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
                const SizedBox(
                  width: 100,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            card = !card;
                          });
                        },
                        child: favorite(card)),
                    const Icon(
                      Icons.download,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    images[activeIndex],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 20,
                  right: 30,
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffd5d5d5),
                          borderRadius: BorderRadius.circular(500)),
                      child: const Icon(Icons.expand_sharp)))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => {
                  setState(() {
                    activeIndex = 0;
                  }),
                },
                child: Container(
                  width: 30,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                ),
              ),
              const SizedBox(
                width: 1,
              ),
              GestureDetector(
                onTap: () => {
                  setState(() {
                    activeIndex = 1;
                  }),
                },
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                ),
              ),
              const SizedBox(
                width: 1,
              ),
              GestureDetector(
                onTap: () => {
                  setState(() {
                    activeIndex = 2;
                  }),
                },
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey),
                ),
              )
            ],
          ),
          Text(
            "Guret",
            style: GoogleFonts.onest(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffd5d5d5),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("Selection 97%"),
                  )),
              const SizedBox(
                width: 15,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffd5d5d5),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("Best Product"),
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text:
                      "A Popular solid color custom cover that can easily be compliment with others solid or partenerd cushions...",
                  style: GoogleFonts.onest(
                    fontSize: 18,
                  )),
              TextSpan(
                  text: "Read more",
                  style: GoogleFonts.onest(
                      fontWeight: FontWeight.bold, fontSize: 18))
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "4.9", style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: "(332)")
              ])),
              const Icon(
                Icons.star,
                color: Color(0xffEEA83F),
              ),
              const Icon(
                Icons.star,
                color: Color(0xffEEA83F),
              ),
              const Icon(
                Icons.star,
                color: Color(0xffEEA83F),
              ),
              const Icon(
                Icons.star,
                color: Color(0xffEEA83F),
              ),
              const Icon(
                Icons.star,
                color: Color(0xffEEA83F),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 195,
                height: 65,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff000000),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'Buy now',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(
                width: 195,
                height: 65,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          )
        ]),
      ),
    );
  }
}
