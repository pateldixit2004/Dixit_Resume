import 'dart:js';

import 'package:flutter/material.dart';
import 'package:reesume_bulding_app/App/home_screen.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=> Home_Screen(),
      },
    )
  );
}