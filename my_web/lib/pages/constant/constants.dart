import 'package:flutter/material.dart';

var appBar = AppBar(
  backgroundColor: const Color.fromARGB(255, 224, 144, 224),
);
var myDrawer = Drawer(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  ),
  backgroundColor: Colors.grey[100],
  child: const SingleChildScrollView(
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DrawerHeader(
            child: Icon(
          Icons.person,
          size: 50,
        )),
        ListTile(
          leading: Icon(Icons.home),
          title: Text(" D A S H B O A R D "),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text(" M E S S A G E"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(" S E T T I N G "),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text(" L O G O U T "),
        )
      ],
    ),
  ),
);
