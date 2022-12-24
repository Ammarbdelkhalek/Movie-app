import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/movie/view_model/home_view_model/home_states/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit(super.initialState);

  static HomeCubit get(context) => BlocProvider.of(context);
}
