// import 'package:flutter/material.dart';
//
// class ReusableCard extends StatelessWidget {
//   ReusableCard({required this.colour, required this.cardChild, required this.onPress});
//   final Color colour;
//   final Widget cardChild;
//   final Function onPress;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPress,
//       child: Container(
//         child: cardChild,
//         margin: const EdgeInsets.all(10.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10.0),
//           color: colour,
//         ),
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.colour,
    required this.cardChild,
    this.onPress, // Making onPress optional
  });

  final Color colour;
  final Widget cardChild;
  final VoidCallback? onPress; // Making onPress nullable

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
