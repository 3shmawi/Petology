import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/shared/network/remote/dio_helper.dart';
import 'package:hackathon/shared/network/repository/repository_screen.dart';

import '../../../models/filter_model.dart';
import '../../../models/static_home_data/find_bet_by_id_model.dart';
import 'filter_states.dart';

class FilterCubit extends Cubit<FilterStates> {
  FilterCubit() : super(FilterInitialState());

  static FilterCubit get(context) => BlocProvider.of(context);

  List<FindBetsByIdModel>? findBetsByIdModel;

  void getPetsById(int id) {
    emit(GetPetsByIdLoadingState());
    Repository(DioHelper()).getPetById(id).then((value) {
      findBetsByIdModel = value.cast<FindBetsByIdModel>();
      emit(GetPetsByIdSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetPetsByIdErrorState());
    });
  }

  Filters? filters;

  void getFilterData(int id) {
    emit(GetFilterByIdLoadingState());

    Repository(DioHelper()).getListFilter(id).then((value) {
      filters = value ;
      print(filters.toString());
      emit(GetFilterByIdSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetFilterByIdErrorState());
    });
  }
}
