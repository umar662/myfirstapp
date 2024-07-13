import 'dart:collection';

import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20,left: 10),
                child: const Text(
                  'Hi, David 👋',
                  style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, right: 10),
                width: 50,
                height: 50,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 10,
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: const Text(
                  'Explore the world',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          )
          
        ],
      ),
    ));
  }
}
