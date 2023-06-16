import 'dart:developer';


import 'package:cinedot/common/api_key.dart';
import 'package:cinedot/common/base_url.dart';
import 'package:cinedot/common/end_url.dart';
import 'package:cinedot/screen/film_view/model/movie_details_model.dart';
import 'package:dio/dio.dart';

class DetailsService{

  final dio = Dio(BaseOptions());
  final baseurl=BaseUrl().baseurl;
  final endUrl=EndUrl().movieDetails;
   Future<DetailsMovie?> getMovieDetails(String id)async{
    log(baseurl+endUrl);
    try{
      Response response =await dio.get('$baseurl$endUrl$id?api_key=${ApiKey().apiKey}&language=en-US');
       if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data.toString());
       



final movieListResponse = DetailsMovie.fromJson(response.data);
      final movies = movieListResponse;


      return movies;
       }else{
        return null;
       }
    }on DioException catch(e){
      log(e.message.toString());
    }
    return null;

  }
}