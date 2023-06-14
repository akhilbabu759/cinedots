
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class TheNameOfApp extends StatelessWidget {
  const TheNameOfApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.18,
      child:  Stack(
        alignment: Alignment.center,
        children: [
          Image.asset( 'assets/moviesmodnew-Custom_1-removebg-preview.png', ),
           SvgPicture.asset('assets/svg/moviesmodnew-Custom 1.svg',width: 100,)
          
        ],
      ),
    );
  }
}