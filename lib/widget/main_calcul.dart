import 'package:bmi_widget_design/ui/design_icon_button.dart';
import 'package:bmi_widget_design/widget/result_cal.dart';
import 'package:flutter/material.dart';
import '../Strings.dart';
import '../ui/color_content_app.dart';
import '../ui/design_card.dart';
import '../ui/design_icon_content.dart';
import 'dart:math';
import '../ui/bottom_button.dart';
import '../calculator_brain.dart';

// ENUMs
enum Gender { male, female, none }

class mainCal extends StatefulWidget {
  @override
  _MainCalState createState() => _MainCalState();
}

class _MainCalState extends State<mainCal> {
  @override
  //Varaiables
  int height = 190;
  int weight = 50;
  int age = 20;
  Gender selectedGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app,
      // appBar: AppBar(
      //   actions: <Widget>[
      //     IconButton(onPressed: () {}, icon: Icon(Icons.star_border))
      //   ],
      //   backgroundColor: bColorDartkk,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: Text(
              textAlign: TextAlign.left,
              Strings.name_app,
              style: kMainTextStyle.copyWith(
                color: label_color,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  //   flex: 2,
                  child: Row(
                    children: [
                      //Male And Female
                      Expanded(
                        //Card One Male
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          child: DesignCard(
                            color_card: selectedGender == Gender.male
                                ? bColorDartkk
                                : bColorText,
                            child_card: DesignIcon(
                                design_icon: Icons.boy,
                                text_icon: Strings.male),
                          ),
                        ),
                      ),
                      Expanded(
                        ///Card Two //Female
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          child: DesignCard(
                            color_card: selectedGender == Gender.female
                                ? bColorDartkk
                                : bColorText,
                            child_card: DesignIcon(
                                design_icon: Icons.girl,
                                text_icon: Strings.female),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Weight

                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: DesignCard(
                          color_card: bColorText,
                          child_card: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                Strings.c_height,
                                textAlign: TextAlign.center,
                                style: kLabelTextStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                              // ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    height.toString() + "  ",
                                    style: selectedValue,
                                  ),
                                  Text(
                                    Strings.cm,
                                    style: kLabelTextStyle,
                                  ),
                                ],
                              ),
                              Flexible(
                                child: SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    thumbColor: Colors.pink,
                                    thumbShape: const RoundSliderThumbShape(
                                        enabledThumbRadius: 15.0),
                                    overlayShape: const RoundSliderOverlayShape(
                                        overlayRadius: 30.0),
                                    activeTrackColor: Colors.white,
                                    overlayColor: Colors.pink[200],
                                  ),
                                  child: Slider(
                                      value: height.toDouble(),
                                      min: 150.0,
                                      max: 200.0,
                                      activeColor: appColor,
                                      inactiveColor: bColorLight,
                                      onChanged: (double newValue) {
                                        setState(() {
                                          height = newValue.round();
                                        });
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: DesignCard(
                          color_card: bColorText,
                          child_card: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  Strings.c_weight,
                                  style: kLabelTextStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  weight.toString(),
                                  style: selectedValue,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DesignIconButton(
                                      btn_icon: Icons.horizontal_rule,
                                      btn_clicked: () {
                                        setState(() {
                                          weight--;
                                        });
                                      }),
                                  DesignIconButton(
                                      btn_icon: Icons.add,
                                      btn_clicked: () {
                                        setState(() {
                                          weight++;
                                        });
                                      })
                                ],
                              ),
                            ],
                          )),
                    ),
                    Expanded(
                      //flex: 2,
                      child: DesignCard(
                        color_card: bColorText,
                        child_card: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              Strings.age,
                              style: kLabelTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              age.toString(),
                              style: selectedValue,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                DesignIconButton(
                                    btn_icon: Icons.horizontal_rule,
                                    btn_clicked: () {
                                      setState(() {
                                        age--;
                                      });
                                    }),
                                DesignIconButton(
                                    btn_icon: Icons.add,
                                    btn_clicked: () {
                                      setState(() {
                                        age++;
                                      });
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                /*
              GestureDetector(
                child: BottomButton(
                  btn_text_cal: Strings.button_cal,
                  btn_click_cal: () {
                    setState(() {
                      double bmi_cal = (weight / pow(height / 100, 2));
                      CalCulatorBrain result_cal = CalCulatorBrain(
                          height: height, weight: weight, bmi: bmi_cal);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultCalCulator(
                              bmi1: result_cal.getBMIsCalCulator(),
                              bmi2: result_cal.getAge(),
                              bmi3: result_cal.getStatus(),
                            ),
                          ));
                    });
                  },
                ),
              ),
              */
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
                            padding: const EdgeInsets.all(50),
                          ),
                          onPressed: () {
                            double bmi_cal = (weight / pow(height / 100, 2));
                            CalCulatorBrain resultCal = CalCulatorBrain(
                                height: height, weight: weight, bmi: bmi_cal);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultCalCulator(
                                  bmi1: resultCal.getBMIsCalCulator(),
                                  bmi2: resultCal.getAge(),
                                  bmi3: resultCal.getStatus(),
                                  get_age: age,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            Strings.button_cal,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
