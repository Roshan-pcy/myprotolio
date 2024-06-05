import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_web/componets/mycontianer.dart';
import 'package:my_web/componets/mytitle.dart';
import 'package:my_web/pages/constant/constants.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: myDrawer,
      appBar: appBar,
      body: Column(
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 2,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return const MyContainer();
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => const MyTile(),
            ),
          )
        ],
      ),
    );
  }
}
