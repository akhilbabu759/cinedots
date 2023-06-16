import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinedot/core/styles/styles.dart';
import 'package:cinedot/screen/home/controller/bloc/home_controller_bloc.dart';
import 'package:cinedot/screen/home/model/home_model.dart';
import 'package:cinedot/screen/home/view/widget/after_carousel.dart';
import 'package:cinedot/screen/home/view/widget/list_view_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AfterAppBar extends StatelessWidget {
  const AfterAppBar(
      {super.key,
      required this.imageUrls,
      required this.currentIndex,
      required this.movieList});
  final int currentIndex;
  final List<String> imageUrls;
  final List<MoviesModel>? movieList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height ,
      child: Column(children: [
        Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.height * 0.028,
            ),
            Text('Trending this week',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              BlocProvider.of<HomeControllerBloc>(context)
                  .add(IndexChangeEvent(index));
            },
            height: 200, // adjust the height as needed
            enableInfiniteScroll: true, // allow infinite scrolling
            autoPlay: true, // auto play the carousel
            enlargeCenterPage: true, // increase the size of the center item
            viewportFraction:
                0.9, // set the fraction of the viewport the items should take
            autoPlayCurve: Curves.fastOutSlowIn, // animation curve
            autoPlayInterval:
                Duration(seconds: 3), // duration between each auto play animation
            autoPlayAnimationDuration:
                Duration(milliseconds: 800), // animation duration
          ),
          items: imageUrls.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageUrls.map((imageUrl) {
            int index = imageUrls.indexOf(imageUrl);
            return Container(
              width:currentIndex == index ?19: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                borderRadius:currentIndex == index ? BorderRadius.circular(20):null,
                shape:currentIndex == index ?BoxShape.rectangle: BoxShape.circle,
                color: currentIndex == index ? AppStyle().tilleColor : Colors.grey,
              ),
            );
          }).toList(),
        ),
        Expanded(
          child: After_carousel(movieList: movieList),
        ),
       
        
      ]),
    );
  }
}

