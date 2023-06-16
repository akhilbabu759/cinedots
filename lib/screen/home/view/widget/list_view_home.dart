import 'package:cinedot/core/styles/styles.dart';
import 'package:cinedot/screen/home/model/home_model.dart';
import 'package:cinedot/screen/home/view/widget/home_card.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key, required this.movList});
  final List<MoviesModel>? movList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        // if (state.movieList != null) {
        //   moviesCount = state.movieList!.length;
        // }
        // log(moviesCount.toString());
        return HomeCard(description:movList![index].overview ,
          imag: movList![index].posterPath,
          text: movList![index].title,
        );
      },
      itemCount: movList?.length,
    );
  }
}
