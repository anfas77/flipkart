import 'package:flipkaet2/Account.dart';
import 'package:flipkaet2/cart.dart';
import 'package:flipkaet2/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'catogary.dart';
import 'first.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List screen = [
      First(),
      Ctgry(),
      Ntfc(),
      Account(),
      Cart(),
    ];

    ValueNotifier notifier = ValueNotifier(0);
    return ValueListenableBuilder(
        valueListenable: notifier,
        builder: (context, value, _) {
          return Scaffold(
            backgroundColor: Color.fromARGB(255, 253, 215, 228),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Color.fromARGB(255, 255, 130, 174),
              backgroundColor: Colors.white,
              selectedFontSize: 15,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: "home",
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category_rounded),
                    label: "categories",
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notification_add),
                    label: "Notifications",
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.profile_circled),
                    label: "Account",
                    backgroundColor: Colors.white),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_rounded),
                    label: "cart",
                    backgroundColor: Colors.white),
              ],
              currentIndex: notifier.value,
              onTap: (value) {
                notifier.value = value;
              },
            ),
            body: screen[value],
          );
        });
  }
}
