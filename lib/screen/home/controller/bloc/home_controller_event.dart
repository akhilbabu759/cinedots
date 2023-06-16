part of 'home_controller_bloc.dart';

// @immutable
abstract class HomeControllerEvent {}
class IndexChangeEvent extends HomeControllerEvent{
  final int currentIndex;

  IndexChangeEvent(this.currentIndex);
}
class GetMovieList extends HomeControllerEvent{}
