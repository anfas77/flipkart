import 'package:flutter/material.dart';

class Ctgry extends StatelessWidget {
  const Ctgry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categoryNames = [
      "offers",
      "grocery",
      "mobiles",
      "fashion",
      "electronics",
      "home",
      "personal care",
      "appliances",
      "toys & baby",
      "furniture",
      "Flights&Hotels",
      "Insurnce",
      "Sports",
      "Food&more",
      "Refurbished",
      "Bike&Cars",
      "Gift Cards",
      "Medicines",
      "Home Services",
      "Phonecash"
    ];
    List<String> categoryImages = [
      'offer.webp',
      'grocery.png',
      'ph.jfif',
      'fashion.jpg',
      'electronics.jpg',
      'home.jpg',
      'personalcare.jpg',
      'appliances.jpg',
      'toys.webp',
      'furniture.jpg',
      'flight.jpg',
      'insurance.webp',
      'sports.jpg',
      'food.jpeg',
      'refurb.jpg',
      'car.jpg',
      'giftcard.jpg',
      'medicines.jpg',
      'homeservice.jpg',
      'phonecash.png',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("All categories"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_voice_sharp))
        ],
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Display 4 items in a row
        ),
        itemCount: categoryNames.length, // Total number of items
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(4.0), // Reduce the margin
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24.0, // Adjust the radius as needed
                  backgroundImage:
                      AssetImage('images/${categoryImages[index]}'),
                ),
                Text(
                  categoryNames[index],
                  style: TextStyle(fontSize: 12.0), // Reduce the font size
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Ctgry(),
  ));
}


//       body: ListView(
//         children: [
//           // Add your list items here
//           ListTile(title: Text("Top Offers")),
//           ListTile(title: Text("Grocery")),
//           ListTile(title: Text("Item 3")),
//           ListTile(title: Text("Item 4")),
//           ListTile(title: Text("Item 1")),
//           ListTile(title: Text("Item 2")),
//           ListTile(title: Text("Item 3")),
//           ListTile(title: Text("Item 4")),
//           ListTile(title: Text("Item 1")),
//           ListTile(title: Text("Item 2")),
//           ListTile(title: Text("Item 3")),
//           ListTile(title: Text("Item 4")),
//           // Add more list items as needed
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class CategoryPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text("Categories"),
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//           IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
//         ],
//       ),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // Number of columns
//         ),
//         itemCount: 8, // Total number of items
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             margin: EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.category, size: 64.0),
//                 Text("Category $index"),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CategoryPage(),
//   ));
// }
