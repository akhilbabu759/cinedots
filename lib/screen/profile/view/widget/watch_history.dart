import 'package:cinedot/core/styles/styles.dart';
import 'package:flutter/material.dart';

class WatchHistoryList extends StatelessWidget {
  const WatchHistoryList({
    super.key,required this.num,required this.tex
  });
  final String num;
  final String tex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$num ',style: TextStyle(color: AppStyle().tilleColor,fontSize: 17,fontWeight: FontWeight.bold)),
        Text(
          tex,
          style: TextStyle(color: AppStyle().grayCol),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.055),
      ],
    );
  }
}
