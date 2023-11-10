import 'package:flutter/material.dart';

import 'flipp.dart';
import 'grocery.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("My Cart"),
            bottom: TabBar(
              indicatorColor: Color.fromARGB(255, 2, 84, 225),
              labelColor: Color.fromARGB(255, 2, 84, 225),
              tabs: [
                Tab(
                  child: Text(
                    "Flipkart(1)",
                  ),
                ),
                Tab(
                    child: Text(
                  "Grocery",
                )),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          body: const TabBarView(
            children: [Flipp(), Grocery()],
          ),
        ));
  }
}
