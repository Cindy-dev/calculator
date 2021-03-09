import 'package:calculator/main_screen.dart';
import 'package:calculator/provider/button_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => ButtonProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreeen(),
      ),
    );
  }
}
