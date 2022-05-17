
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'messanger/messanger_screen.dart';



void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       //theme: ThemeData.dark(),
        home: MessangerScreen(),
     );
  }
}