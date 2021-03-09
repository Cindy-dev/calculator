import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ButtonProvider extends ChangeNotifier{
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;
   buttonPressed(String buttonText){
     if(buttonText == 'C'){
       equation = '0';
       result = '0';
       equationFontSize = 38.0;
       resultFontSize = 48.0;
     }else if (buttonText == 'DEL'){
       equationFontSize = 48.0;
       resultFontSize = 38.0;
       equation = equation.substring(0, equation.length-1);
       result = result.substring(result.length);
       if(equation == ''){
         equation = '0';
       }
     } else if(buttonText == '='){
       equationFontSize = 38.0;
       resultFontSize = 48.0;

       expression = equation;
       expression = expression.replaceAll('×', '*');
       expression = expression.replaceAll('÷', '/');
       try{
         Parser p = Parser();
         Expression exp = p.parse(expression);

         ContextModel cm = ContextModel();
         result = '${exp.evaluate(EvaluationType.REAL, cm)}';
       }catch(e){
         result = 'Error';
       }
     } else{
       equationFontSize = 38.0;
       resultFontSize = 48.0;
       if(equation == '0'){
         equation = buttonText;
      }else{
        equation = equation + buttonText;
      }
    }
    notifyListeners();
   }
}