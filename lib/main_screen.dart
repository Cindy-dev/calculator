import 'package:calculator/buttons.dart';
import 'package:calculator/provider/button_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreeen extends StatefulWidget {
  static const routeName = 'mainscreen';
  @override
  _MainScreeenState createState() => _MainScreeenState();
}

class _MainScreeenState extends State<MainScreeen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ButtonProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                provider.equation,
                style: TextStyle(fontSize: provider.equationFontSize),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Text(
                provider.result,
                style: TextStyle(fontSize: provider.resultFontSize),
              ),
            ),
            // Expanded(child: Divider()),
            SizedBox(height: MediaQuery.of(context).size.height *0.31,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .75,
                    child: (Table(
                      children: [
                        TableRow(children: [
                          Buttons(
                            buttonText: 'C',
                            buttonHeight: 1,
                            buttonColor: Colors.grey,
                          ),
                          Buttons(
                            buttonText: 'DEL',
                            buttonHeight: 1,
                            buttonColor: Colors.grey,
                          ),
                          Buttons(
                            buttonText: '÷',
                            buttonHeight: 1,
                            buttonColor: Colors.grey,
                          ),
                        ]),
                        TableRow(children: [
                          Buttons(
                            buttonText: '7',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                          Buttons(
                            buttonText: '8',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                          Buttons(
                            buttonText: '9',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                        ]),
                        TableRow(children: [
                          Buttons(
                            buttonText: '4',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                          Buttons(
                            buttonText: '5',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                          Buttons(
                            buttonText: '6',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                        ]),
                        TableRow(children: [
                          Buttons(
                            buttonText: '1',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                          Buttons(
                            buttonText: '2',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                          Buttons(
                            buttonText: '3',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                        ]),
                        TableRow(children: [
                          Buttons(
                            buttonText: '.',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                          Buttons(
                            buttonText: '0',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                          Buttons(
                            buttonText: '00',
                            buttonHeight: 1,
                            buttonColor: Colors.black,
                          ),
                        ]),
                      ],
                    )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Table(
                      children: [
                        TableRow(children: [
                          Buttons(
                            buttonText: '×',
                            buttonColor: Colors.black54,
                            buttonHeight: 1,
                          ),
                        ]),
                         TableRow(
                           children: [
                            Buttons(
                              buttonText: '-',
                              buttonColor: Colors.black54,
                              buttonHeight: 1,
                            ),
                           ]),
                          TableRow(
                            children:[
                             Buttons(
                              buttonText: '+',
                              buttonColor: Colors.black54,
                              buttonHeight: 1,
                            ),
                          ]),
                          TableRow(
                            children: [
                            Buttons( 
                              buttonText: '=',
                              buttonColor: Colors.black54,
                              buttonHeight: 2,
                            ),
                          ]),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
