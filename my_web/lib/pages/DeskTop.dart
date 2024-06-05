import 'package:flutter/material.dart';
import 'package:my_web/componets/mycontianer.dart';
import 'package:my_web/componets/mytitle.dart';
import 'package:my_web/pages/constant/constants.dart';

class DeskTop extends StatelessWidget {
  const DeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: Color.fromARGB(255, 246, 252, 251),
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Flexible(
                  child: AspectRatio(
                    aspectRatio: 4,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) {
                        return const MyContainer();
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => const MyTile(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey[800],
          ))
        ],
      ),
    );
  }
}
