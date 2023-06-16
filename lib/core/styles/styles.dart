import 'package:flutter/material.dart';

class AppStyle{
  final bgColor=
  const LinearGradient(colors: [Colors.transparent,

               Color.fromRGBO(1, 42, 82, 1),
Color.fromRGBO(1, 24, 54, 1)
            ],begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
);
//   final bgColor=[const Color.fromARGB(1, 42, 82, 1),
// const Color.fromARGB(1, 24, 54, 1)];
final bgwithouttran=LinearGradient(colors: [
          Color.fromRGBO(1, 42, 82, 1),
          Color.fromRGBO(1, 24, 54, 1)
        ]);
        final tilleColor=Color.fromRGBO(205, 205, 205, 1);
        final grayCol=Color.fromRGBO(154, 154, 154, 1);
      final progressColor=LinearGradient(colors: [
          Color.fromRGBO(102, 122, 191, 1),
          Color.fromRGBO(102, 122, 191, 0.5)
        ]);  

}