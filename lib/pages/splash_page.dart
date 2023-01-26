import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tagbakin_layout/pages/login.dart';

class Splash extends StatelessWidget{
  const Splash({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    Timer(
        Duration(seconds: 2),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (BuildContext context)=>Login())
        )
    );

    return Scaffold(
      backgroundColor: Color(0xFF071330),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),

          //Logo and Title here
          child: Text(
            'Logo'
          ),
          ),
        ),
      );
  }
}