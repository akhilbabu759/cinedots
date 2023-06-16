import 'package:cinedot/core/styles/styles.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.imag, required this.text,required this.description})
      : super(key: key);
  final String text;
  final String description;
  final String imag;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.19,
            width: 130,
            child: imag == 'null'
                ? const Text(
                    'image not available',
                    style: TextStyle(color: Colors.red),
                  )
                : Image.network(
                    'https://image.tmdb.org/t/p/w500$imag',
                    // '${BaseUrl().baseurl}3$imag'
        
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:6.7,top: 5),
          child: SizedBox(height: 32,
            width: 130,
            child: Text(
              text,
              style: TextStyle(color: AppStyle().tilleColor),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(left:6.6,top: 5),
          child: SizedBox(
            width: 130,
            child: Text(
              description,
              style: TextStyle(color: AppStyle().grayCol),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        )
      ],
    );
  }
}
