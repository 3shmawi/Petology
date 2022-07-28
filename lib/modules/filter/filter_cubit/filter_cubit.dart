import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/static_home_data/find_bet_by_id_model.dart';
import '../../../shared/network/remote/dio_helper.dart';
import 'filter_states.dart';

class FilterCubit extends Cubit<FilterStates> {
  FilterCubit() : super(FilterInitialState());

  static FilterCubit get(context) => BlocProvider.of(context);

  List<FindBetsByIdModel>? findBetsByIdModel;

  void getPetsById(int id) {
    emit(GetPetsByIdLoadingState());
    DioHelper.getData(url: '/categories/$id/pets?').then((value) {
      findBetsByIdModel = List<FindBetsByIdModel>.from(value.data);
      print(findBetsByIdModel![0].toString());
      emit(GetPetsByIdSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetPetsByIdErrorState());
    });
  }
}
