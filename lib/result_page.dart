import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/rounded_icon_button.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(
          'BMI Calculator'
        ),
      ),
      body: Column(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget> [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment:  Alignment.bottomLeft,
              child :  Text(
                'Your Result',
                style: KLargeButtonText,
              ),
            ),

          ),
          Expanded(
            flex:5,
            child: ReusableCard(
              colour : KActiveColorCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children:  <Widget>[
                 Text(
                   resultText,
                   style: KLabelResultTextStyle,
                 ),
                 Text(
                   bmiResult,
                   style: KLargeLabelText,
                 ),
                 Text(
                   interpretation,
                   textAlign: TextAlign.center,
                   style: KResultBodyTextStyle,
                 ),

               ],
              ),

            ),
          ),
          BottomButton(
            onTap: (){},
            buttonTittle: 'RE-Calculate',
          ),
        ],
      ),
    );
  }
}
