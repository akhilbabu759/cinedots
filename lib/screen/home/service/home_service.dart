import 'dart:developer';


import 'package:cinedot/common/base_url.dart';
import 'package:cinedot/common/end_url.dart';
import 'package:cinedot/screen/home/model/home_model.dart';
import 'package:dio/dio.dart';

class HomeService {
  final dio = Dio(BaseOptions());
  final baseurl = BaseUrl().baseurl;
  final endUrl = EndUrl().getMovie;
  Future<List<MoviesModel>?> getMovie() async {
    log(baseurl + endUrl);
    try {
      Response response = await dio.get(baseurl + endUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());



        final movieListResponse = MovieListResponse.fromJson(response.data);
        final movies = movieListResponse.results;
        log(movies.toString());

        return movies;
      } else {
        return null;
      }
    } on DioError catch (e) {
      log(e.message.toString());
    }
    return null;
  }
}
