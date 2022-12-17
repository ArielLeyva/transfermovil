import 'dart:math';

import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(68, 138, 255, 0.2),
            Color.fromRGBO(255, 255, 255, 0.4)
          ])),
    );

    final blueBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 450,
        width: 400,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(29, 145, 206, 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
              )
            ]),
      ),
    );

    final yellowBox = Transform.rotate(
      angle: -pi / 3.5,
      child: Container(
        height: 650,
        width: 500,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(240, 172, 29, 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
              )
            ]),
      ),
    );

    final orangeBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 450,
        width: 400,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(227, 92, 37, 1.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
              )
            ]),
      ),
    );

    return Stack(
      children: [
        gradient,
        Positioned(
          top: -230,
          left: -380,
          child: yellowBox,
        ),
        Positioned(
          top: -180,
          right: -230,
          child: blueBox,
        ),
        Positioned(
          bottom: -300,
          right: -230,
          child: orangeBox,
        )
      ],
    );
  }
}
