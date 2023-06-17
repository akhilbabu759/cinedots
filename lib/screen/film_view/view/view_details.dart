import 'dart:developer';

import 'package:cinedot/core/styles/styles.dart';
import 'package:cinedot/screen/film_view/controller/bloc/movie_details_bloc.dart';
import 'package:cinedot/screen/home/controller/bloc/home_controller_bloc.dart';
import 'package:cinedot/screen/home/view/widget/after_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewDetails extends StatelessWidget {
  const ViewDetails({super.key, required this.id, required this.movieList});
  final String id;
  final movieList;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MovieDetailsBloc>().add(GetMovieDetails(id: id));
    });
    return Scaffold(
      body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
        return state.movieDetails!.backdropPath == ''
            ? Center(child: CircularProgressIndicator())
            : ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    children: [
                      Stack(children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                              'https://image.tmdb.org/t/p/w500/${state.movieDetails!.posterPath}',
                              fit: BoxFit.fill),
                        ),
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.07,
                            left: 14,
                            child: CircleAvatar(
                              radius: 22,
                              backgroundColor:
                                  Color.fromARGB(45, 250, 249, 249),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: AppStyle().tilleColor,
                                  )),
                            )),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.2699,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.73,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              gradient: AppStyle().bgColor,
                            ),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 19.0,
                                  right: 19,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.36),
                                    Container(
                                      height: 12,
                                      width: 18,
                                      decoration:
                                          BoxDecoration(color: Colors.yellow),
                                      child: Text(
                                        'HD',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    SizedBox(height: 13),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            state.movieDetails!.title,
                                            style: TextStyle(
                                                color: AppStyle().tilleColor,
                                                fontSize: 25),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Icon(
                                                  Icons.info_outline,
                                                  size: 18,
                                                  color: AppStyle().grayCol,
                                                ),
                                                Text(
                                                  'info',
                                                  style: TextStyle(
                                                      color: AppStyle().grayCol,
                                                      fontSize: 13),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Icon(Icons.add,
                                                      size: 18,
                                                      color:
                                                          AppStyle().grayCol),
                                                  Text('watch later',
                                                      style: TextStyle(
                                                          color: AppStyle()
                                                              .grayCol,
                                                          fontSize: 13))
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          child: RichText(
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            text: TextSpan(children: [
                                              TextSpan(
                                                text:
                                                    '${state.movieDetails!.releaseDate.year} .',
                                                style: TextStyle(
                                                    color: AppStyle().grayCol,
                                                    fontSize: 12),
                                              ),
                                              TextSpan(
                                                text:
                                                    '${state.movieDetails!.genres[0].name} .',
                                                style: TextStyle(
                                                    color: AppStyle().grayCol,
                                                    fontSize: 12),
                                              ),
                                              TextSpan(
                                                text:
                                                    '${state.movieDetails!.runtime ~/ 60}hrs${state.movieDetails!.runtime.remainder(60)}min .',
                                                style: TextStyle(
                                                    color: AppStyle().grayCol,
                                                    fontSize: 12),
                                              ),
                                              // TextSpan(text: '${state.movieDetails!.releaseDate.year} .',style: TextStyle(
                                              // color: AppStyle().grayCol,
                                              // fontSize: 12), )
                                            ]),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18.0),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 38,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Watch Now')),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.favorite_outline,
                                              size: 28,
                                              color: AppStyle().grayCol,
                                            ),
                                            Text(
                                              'Add to Favorites',
                                              style: TextStyle(
                                                  color: AppStyle().grayCol,
                                                  fontSize: 13),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 19,
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.file_download_outlined,
                                              size: 28,
                                              color: AppStyle().grayCol,
                                            ),
                                            Text(
                                              'Download',
                                              style: TextStyle(
                                                  color: AppStyle().grayCol,
                                                  fontSize: 13),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 19,
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.thumb_up_alt_outlined,
                                              size: 28,
                                              color: AppStyle().grayCol,
                                            ),
                                            Text(
                                              'Like',
                                              style: TextStyle(
                                                  color: AppStyle().grayCol,
                                                  fontSize: 13),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 19,
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.file_upload_outlined,
                                              size: 28,
                                              color: AppStyle().grayCol,
                                            ),
                                            Text(
                                              'Upload Subtitles',
                                              style: TextStyle(
                                                  color: AppStyle().grayCol,
                                                  fontSize: 13),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Flexible(
                                        child: Text(
                                      state.movieDetails!.overview,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: AppStyle().grayCol,
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      // Positioned(
                      //   bottom: 0,
                      //   child:
                      // ),
                    ],
                  ),
                  Container(
                    // height: 100,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 8, 26, 57)),
                    child: Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Top Company',
                              style: TextStyle(
                                  color: AppStyle().tilleColor, fontSize: 18),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                state.movieDetails!.productionCompanies.length,
                                (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundImage: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500/${state.movieDetails!.productionCompanies[index].logoPath}'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Existing code...
                  Container(
                      decoration:
                          BoxDecoration(color: Color.fromARGB(255, 8, 26, 57)),
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: AfterCarousel(movieList: movieList)),
                ],
              );
      }),
    );
  }
}
