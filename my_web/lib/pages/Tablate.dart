import 'package:flutter/material.dart';
import 'package:my_web/componets/mycontianer.dart';
import 'package:my_web/componets/mytitle.dart';

import 'constant/constants.dart';

class Tablate extends StatelessWidget {
  const Tablate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer,
      appBar: appBar,
      backgroundColor: Color.fromARGB(255, 231, 227, 222),
      body: Column(
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 4,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
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
