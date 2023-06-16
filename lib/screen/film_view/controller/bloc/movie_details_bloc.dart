import 'package:bloc/bloc.dart';
import 'package:cinedot/screen/film_view/model/movie_details_model.dart';
import 'package:cinedot/screen/film_view/service/detail_service.dart';
import 'package:meta/meta.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc() : super(MovieDetailsState(movieDetails: DetailsMovie(adult: false,backdropPath: '',budget: 0,genres: [],homepage: '',id: 0,imdbId:'',originalLanguage: '',originalTitle: '',overview: '',popularity: 0,posterPath: '',productionCompanies: [],productionCountries: [],releaseDate: DateTime.now(),revenue: 0,runtime: 0,spokenLanguages: [],status: '',tagline: '',title: '',video: false,voteAverage: 0,voteCount: 0, ))) {
    on<GetMovieDetails>((event, emit) async{
      final detail=await DetailsService().getMovieDetails(event.id);

    emit(MovieDetailsState(movieDetails: detail));

    });
  }
}
