import 'package:flutter/material.dart';

import 'custom11.dart';

class Flipp extends StatelessWidget {
  const Flipp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cartName = [
      "Apple iphone 14(red,128 GB)",
      "Galaxy M04 (4GB RAM)",
      "realme narzo N53 (Feather Black, 4GB+64GB)",
    ];
    List<String> phoneImage = [
      "images/ph.jfif",
      "images/samsung.jpg",
      "images/realme.jfif"
    ];
    List<String> offerDet = ["18%", "10%", "5%"];

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return CustomTl(
              phoneImage: phoneImage[index],
              phoneName: cartName[index],
              offerDet: offerDet[index],
            );
          },
          scrollDirection: Axis.vertical,
          itemCount: phoneImage.length,
        ),
      ),
    );
  }
}
// class Flipp extends StatelessWidget {
//   const Flipp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<String> cartName = [
//       "Apple iphone 14(red,128 GB)",
//       "Galaxy M04 (4GB RAM)",
//       "realme narzo N53 (Feather Black, 4GB+64GB)",
//     ];
//     List<String> phoneImage = [
//       "images/ph.jfif",
//       "images/samsung.webp",
//       "images/realme.webp"
//     ];
//     List<String> offerDet = ["18%", "10%", "5%"];

//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: ListView.builder(
//           itemBuilder: (context, index) {
//             return CustomTl(
//               phoneImage: phoneImage[index],
//               phoneName: cartName[index],
//               offerDet: offerDet[index],
//             );
//           },
//           scrollDirection: Axis.vertical,
//           itemCount: phoneImage.length,
//         ),
//       ),
//     );
//   }
// }
