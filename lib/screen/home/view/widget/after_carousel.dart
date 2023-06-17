import 'package:cinedot/screen/home/model/home_model.dart';
import 'package:cinedot/screen/home/view/widget/list_view_home.dart';
import 'package:flutter/material.dart';

class AfterCarousel extends StatelessWidget {
  const AfterCarousel({
    super.key,
    required this.movieList,
  });

  final List<MoviesModel>? movieList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 19.0),
          child: Row(
            children: [
              Text('Popular Movies',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
        ),
         Expanded(child: Padding(
      padding: const EdgeInsets.only(left:15.0,top: 18),
      child: HomeListView(movList: movieList),
    )),Padding(
      padding: const EdgeInsets.only(left: 19.0,top: 10),
      child: Row(
        children: [
          Text('Trending Now',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
    ),
    
    Expanded(child: Padding(
      padding: const EdgeInsets.only(left:15.0,top: 18),
      child: HomeListView(movList: movieList),
    ))
      ],
    );
  }
}
