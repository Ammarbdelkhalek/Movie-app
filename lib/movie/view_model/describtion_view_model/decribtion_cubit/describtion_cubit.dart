import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/movie/view_model/describtion_view_model/describtion_states/describtion_states.dart';

class DescribtionCubit extends Cubit<DescribtionStates> {
  DescribtionCubit(super.initialState);

  static DescribtionCubit get(context) => BlocProvider.of(context);
}
