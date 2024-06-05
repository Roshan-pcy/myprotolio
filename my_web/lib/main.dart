import 'package:flutter/material.dart';
import 'package:my_web/pages/DeskTop.dart';
import 'package:my_web/pages/Mobile.dart';
import 'package:my_web/pages/responsive.dart';
import 'pages/MyHomePage.dart';
import 'pages/Tablate.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Responsive(
        mobile: Mobile(),
        desktop: DeskTop(),
        tablate: Tablate(),
      )));
}
