import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/helper/todoapp.dart';

import 'Form_example.dart';
import 'Registration_example.dart';
import 'calculator.dart';
import 'login_page.dar.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
      primarySwatch: Colors.green
    ),
      home: TodoApp(),
    );
  }
}

