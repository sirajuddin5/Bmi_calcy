import 'package:bmi_calcy/constants.dart';
import 'package:bmi_calcy/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.bmiText,required this.interpretation});

  String? bmiResult;
  String bmiText;
  String interpretation;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CAlCY'),

      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        bmiText,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                        ),
                      ),
                    ),

                    Center(
                      child: Text(
                        bmiResult!,
                        style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.w900,

                        ),
                        textAlign: TextAlign.center,
                      ),

                    ),

                    Center(
                      child: Text(
                        interpretation,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25.0,
                          ),
                        textAlign: TextAlign.center,
                      ),

                    ),
                  ],
                ),
                colour: kActiveCardColor,
              ),
            ),
            GestureDetector(
              onTap: (){
                  Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: kBottomContainerHeight,
                margin: const EdgeInsets.only(top: 10.0),
                decoration: const BoxDecoration(
                    color: kBottomContainerColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: const Center(
                  child: Text('RE - CALCULATE BMI',style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
