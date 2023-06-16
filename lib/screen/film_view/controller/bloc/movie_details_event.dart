part of 'movie_details_bloc.dart';

@immutable
abstract class MovieDetailsEvent {}
class GetMovieDetails extends MovieDetailsEvent{
  final String id;
  GetMovieDetails({required this.id});
}
