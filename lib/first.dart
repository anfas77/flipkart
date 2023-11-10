import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  final List<String> products = [
    "images/dh.jfif",
    "images/diwa.jfif",
    "images/diw.jfif",
  ];

  @override
  Widget build(BuildContext context) {
    bool isSwitch = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 253, 215, 228),
        title: Row(
          children: [
            Container(
                height: 40,
                width: 40,
                color: const Color.fromARGB(255, 255, 198, 217),
                child: Image(
                  image: AssetImage("images/flip.jpg"),
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Flipkart",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 253, 215, 228),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            children: [
              Container(
                height: 70,
                width: 90,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 215, 228),
                ),
                child: Column(
                  children: [
                    Text(
                      "Brand mall",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Switch(
                      // focusColor: Color.fromARGB(255, 255, 130, 174),
                      // hoverColor: Color.fromARGB(255, 255, 130, 174),
                      activeColor: Color.fromARGB(255, 255, 130, 174),
                      value: isSwitch,
                      onChanged: (value) {
                        setState(() {
                          isSwitch = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 225, 225, 225),
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 95, 90, 90)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefix: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "search",
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              )
            ],
          ),
          Container(
            height: 200,
            child: CarouselSlider(
                items: products
                    .map((e) => Container(
                          child: Center(
                            child: Image.asset(e),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                    autoPlay: true, aspectRatio: 2, enlargeCenterPage: true)),
          ),
          Container(
            height: 210,
            width: 200,
            color: Color.fromARGB(255, 253, 215, 228),
            child: Stack(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.orange),
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 255, 255, 0),
                                image: DecorationImage(
                                    image: AssetImage("images/offer.jfif"),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Top Offers",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.orange),
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 255, 255, 0),
                                image: DecorationImage(
                                    image: AssetImage("images/ph.jfif"),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Mobiles",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.orange),
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 255, 255, 0),
                                image: DecorationImage(
                                    image: AssetImage("images/shraddha.jfif"),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Fashion",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.orange),
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 255, 255, 0),
                                image: DecorationImage(
                                    image: AssetImage("images/elec.jfif"),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Electronics",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.orange),
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 255, 255, 0),
                                image: DecorationImage(
                                    image: AssetImage("images/tv.jfif"),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              "Tv",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 10,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromARGB(255, 255, 255, 0),
                                  image: DecorationImage(
                                      image: AssetImage("images/toys.jfif"),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Toys",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromARGB(255, 255, 255, 0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("images/furniture.jfif"),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Furniture",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromARGB(255, 255, 255, 0),
                                  image: DecorationImage(
                                      image: AssetImage("images/med.jfif"),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Medicines",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromARGB(255, 255, 255, 0),
                                  image: DecorationImage(
                                      image: AssetImage("images/gad.jfif"),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Gadgets",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromARGB(255, 255, 255, 0),
                                  image: DecorationImage(
                                      image: AssetImage("images/spoy.jfif"),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                "spoyl",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
