import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/button_provider.dart';

class Buttons extends StatefulWidget {
  final String buttonText;
  final double buttonHeight;
  final Color buttonColor;
  Buttons({this.buttonText, this.buttonHeight, this.buttonColor});

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ButtonProvider>(context);
    return Container(
      //padding: EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height * 0.1 * widget.buttonHeight,
      color: widget.buttonColor,
      child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: BorderSide(
                  color: Colors.black54,
                  width: 1,
                  style: BorderStyle.solid,
                )),
          ),
          onPressed: () => provider.buttonPressed(widget.buttonText),
          child: Text(
            widget.buttonText,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          )),
    );
  }
}
