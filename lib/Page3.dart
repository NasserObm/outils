import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onTap: null, child: const Icon(Icons.arrow_back)),
              const SizedBox(
                width: 100,
              ),
              const Row(
                children: [Icon(Icons.favorite_border), Icon(Icons.download)],
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(23)),
                child: Image.network(
                  "https://m.media-amazon.com/images/I/91HKF5bWeZL._AC_UF1000,1000_QL80_.jpg",
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
        const Text(
          "Guret",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Row(
          children: [
            Text("Selection 97%"),
            SizedBox(
              width: 15,
            ),
            Text("Best Product")
          ],
        ),
        RichText(
          text: const TextSpan(children: [
            TextSpan(
                text:
                    "A Popular solid color custom cover that can\neasily be compliment with others solid or\n partenerd cushions..."),
            TextSpan(
                text: "Read more",
                style: TextStyle(fontWeight: FontWeight.bold))
          ]),
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
              color: Colors.yellow,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 210,
              height: 50,
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
              width: 210,
              height: 50,
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
    );
  }
}
