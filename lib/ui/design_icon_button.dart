import 'package:bmi_widget_design/ui/color_content_app.dart';
import 'package:flutter/material.dart';

class DesignIconButton extends StatelessWidget {
  final IconData btn_icon;
  final Function()? btn_clicked;
  const DesignIconButton({required this.btn_icon, required this.btn_clicked});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: btn_clicked,
      elevation: 0,
      constraints: const BoxConstraints.tightFor(width: 42.0, height: 42.0),
      fillColor: bColorDartkk,
      shape: const CircleBorder(),
      child: Icon(
        btn_icon,
        color: Colors.white,
      ),
    );
  }
}
