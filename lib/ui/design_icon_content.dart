import 'package:flutter/material.dart';
import 'package:bmi_widget_design/ui/color_content_app.dart';

class DesignIcon extends StatelessWidget {
  final IconData design_icon;
  final String text_icon;
  DesignIcon({required this.design_icon, required this.text_icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          design_icon,
          size: 80,
        ),
        Text(
          text_icon,
          style: kLabelTextStyle.copyWith(
              fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
