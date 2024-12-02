import 'package:flutter/material.dart';

class DesignCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Color color_card;
  // ignore: non_constant_identifier_names
  final Widget child_card;

  const DesignCard({required this.color_card, required this.child_card});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: child_card,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color_card,
        borderRadius: BorderRadius.circular(15),
        //  border: BoxBorder(

        //  ),
      ),
    );
  }
}
