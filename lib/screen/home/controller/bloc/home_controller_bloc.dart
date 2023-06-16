import 'package:bloc/bloc.dart';
import 'package:cinedot/screen/home/model/home_model.dart';
import 'package:cinedot/screen/home/service/home_service.dart';


part 'home_controller_event.dart';
part 'home_controller_state.dart';

class HomeControllerBloc extends Bloc<HomeControllerEvent, HomeControllerState> {
  HomeControllerBloc() : super(HomeControllerState(currentIndex: 0,movieList: [])) {
    on<IndexChangeEvent>((event, emit) async {
      List<MoviesModel>?lis=await HomeService().getMovie();
      emit(HomeControllerState(currentIndex: event.currentIndex,movieList: lis));
    });
     on<GetMovieList>((event, emit) async {
      List<MoviesModel>?lis=await HomeService().getMovie();
      emit(HomeControllerState(currentIndex: 0,movieList: lis));
    });
  }
}
