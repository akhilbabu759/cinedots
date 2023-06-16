import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinedot/core/styles/styles.dart';

import 'package:cinedot/screen/home/controller/bloc/home_controller_bloc.dart';
import 'package:cinedot/screen/home/model/home_model.dart';
import 'package:cinedot/screen/home/view/widget/home_card.dart';
import 'package:cinedot/screen/home/view/widget/list_view_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/after_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeControllerBloc>().add(GetMovieList());
    });
    final List<String> imageUrls = [
      'https://static.moviecrow.com/gallery/20220702/200745-Captain%20Miller%20Dhanush%20First%20Look%20Poster%20Official.png',
      'https://www.loveagain.movie/assets/images/desktopbanner.jpg',
      'https://i.ytimg.com/vi/FNuk4UkLSgo/maxresdefault.jpg',
    ];

    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(1, 42, 82, 1),
          Color.fromRGBO(1, 24, 54, 1)
        ], begin: Alignment.topRight, end: Alignment.bottomRight)),
        child: BlocBuilder<HomeControllerBloc, HomeControllerState>(
          builder: (context, state) {
            return state.movieList!.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: Color.fromRGBO(205, 205, 205, 1),
                              )),
                          Image.asset(
                            'assets/moviesmodnew-Custom_1-removebg-preview.png',
                            height: MediaQuery.of(context).size.height * 0.06,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.turned_in_not,
                                color: Color.fromRGBO(205, 205, 205, 1),
                              ))
                        ],
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            AfterAppBar(
                              imageUrls: imageUrls,
                              currentIndex: state.currentIndex,
                              movieList: state.movieList,
                            ),
                          ],
                        ),
                      )
                    ],
                  );
          },
        ),
      ),
    );
  }
}
