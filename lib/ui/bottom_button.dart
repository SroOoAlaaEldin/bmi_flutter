import 'package:flutter/material.dart';
import 'color_content_app.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.btn_text_cal, required this.btn_click_cal});
  // ignore: non_constant_identifier_names
  final String btn_text_cal;
  // ignore: non_constant_identifier_names
  final Function()? btn_click_cal;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: btn_click_cal,
      child: Container(
        margin: const EdgeInsets.all(50),
        width: 900,
        height: bottomBarHeight,
        decoration: BoxDecoration(
          color: bColorDartkk,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            btn_text_cal,
            style: kMainTextStyle.copyWith(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        /*
        color: bColorDark,
        width: 300,
        height: bottomBarHeight,*/
      ),
    );
  }
}
