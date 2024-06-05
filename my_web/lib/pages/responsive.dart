import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablate;
  final Widget desktop;
  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablate,
      required this.desktop});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return mobile;
          } else if (width < 1100) {
            return tablate;
          } else {
            return desktop;
          }
        },
      ),
    );
  }
}
