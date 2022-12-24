import 'package:flutter_bloc/flutter_bloc.dart';
import '../faviourite_states/faviourite_states.dart';

class FaviouriteCubit extends Cubit<FaviouriteStates> {
  FaviouriteCubit(super.initialState);

  static FaviouriteCubit get(context) => BlocProvider.of(context);
}
