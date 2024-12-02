import 'package:bmi_widget_design/ui/color_content_app.dart';
import 'package:flutter/material.dart';
import '../main_calculator.dart';
import '../Strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceOut),
    );
    // _controller.forward().then((value) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => MainCalculator(),
    //     ),
    //   );
    // }
    // );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 9,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) => Container(
                height: 300,
                width: 200,
                transform:
                    Matrix4.translationValues(0, -_animation.value * 100, 0),
                child: Image.asset(
                  'assets/images/icon_logo.png',
                  fit: BoxFit.none,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: bColorDartkk,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(40),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => MainCalculator(),
                        ),
                      );
                    },
                    child: Text(
                      Strings.text_lets_go,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              // const SizedBox(height: 100),
              /*
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: bColorDartkk,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => MainCalculator(),
                    ),
                  );
                },
                child: Text(
                  Strings.text_lets_go,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
*/
              //SizedBox(height: 20),
              // Text(
              //   Strings.name_logo,
              //   style: const TextStyle(
              //       fontSize: 40,
              //       fontWeight: FontWeight.bold,
              //       color: bColorDartkk),
              // ),
            ],
          ),
        ],
      ),
    );
  }
//    );
}
