import 'package:flutter/material.dart';
import '../Strings.dart';
import '../ui/color_content_app.dart';

class ResultCalCulator extends StatelessWidget {
  ResultCalCulator(
      {required this.get_age,
      required this.bmi1,
      required this.bmi2,
      required this.bmi3});

  final String bmi1;
  final String bmi2;
  final String bmi3;
  final int get_age;
  //const kbottomContainerHeight = 80.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app,
      // appBar: AppBar(
      //   backgroundColor: bColorDartkk,
      //   title: Text(Strings.calculator_result,
      //       style: kMainTextStyle.copyWith(
      //           fontSize: 20, fontWeight: FontWeight.bold)),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                Strings.text_result_lable,
                style: kMainTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: label_color,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            // flex: 2,
            child: Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
              decoration: BoxDecoration(
                  // border: Border.all(Colors.accents),
                  borderRadius: BorderRadius.circular(30),
                  color: bColorText),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Center(
                    // widthFactor: 10,
                    // heightFactor: 10,
                    // BMI
                    child: Text(
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      bmi3,
                      style: const TextStyle(
                          color: label_color,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.right,
                    "${Strings.name_logo}: $bmi1",
                    style: kLabelTextStyle.copyWith(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    Strings.text_resul1,
                    style: kLabelTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: label_col_text),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    Strings.text_resul2,
                    style: kLabelTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  Text(
                    "${Strings.current_age} $get_age",
                    style: kLabelTextStyle.copyWith(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  // Text(bmi3, style: const TextStyle(letterSpacing: 1.0))
                ],
              ),
            ),
          ),
          // const Padding(padding: EdgeInsets.only(top: 10)),
          // Expanded(
          //   child: Align(
          //     alignment: Alignment.bottomCenter,
          //     child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: bColorDartkk,
          //         shape: const CircleBorder(),
          //         padding: const EdgeInsets.all(20),
          //       ),
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute<void>(
          //             builder: (BuildContext context) => mainCal(),
          //           ),
          //         );
          //       },
          //       child: Text(
          //         Strings.text_button_reject,
          //         style: const TextStyle(
          //             color: Colors.white,
          //             fontSize: 17,
          //             fontWeight: FontWeight.bold),
          //       ),
          //     ),
          //   ),
          // ),
          //       ),
          // );
          // Row(
          //   children: <Widget>[
          //     // mainAxisAlignment: MainAxisAlignment.center,
          //     Expanded(
          //       flex: 1,
          //       child: Align(
          //         alignment: Alignment.bottomCenter,
          //         child: ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor: bColorDartkk,
          //             shape: const CircleBorder(),
          //             padding: const EdgeInsets.all(20),
          //           ),
          //           onPressed: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute<void>(
          //                 builder: (BuildContext context) => mainCal(),
          //               ),
          //             );
          //           },
          //           child: Text(
          //             Strings.text_button_reject,
          //             style: const TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 17,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const Padding(padding: EdgeInsets.only(top: 20)),
          SizedBox(
            width: 200,
            // height: 30,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            //  children: <Widget>[
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    // flex: 1,

                    child: IconButton(
                        padding: const EdgeInsets.only(bottom: 40, top: 30),
                        onPressed: () {
                          print("Shared");
                        },
                        icon: const Icon(
                          Icons.share,
                          color: bColorDartkk,
                          size: 35,
                        ))),
                const Padding(padding: EdgeInsets.only(right: 10)),
                Expanded(
                    flex: 1,
                    child: IconButton(
                        padding: const EdgeInsets.only(bottom: 40, top: 30),
                        onPressed: () {
                          print("Downloaded");
                        },
                        icon: const Icon(
                          Icons.download_rounded,
                          color: bColorDartkk,
                          size: 35,
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
