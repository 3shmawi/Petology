import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/find_model.dart';
import '../../../shared/network/remote/dio_helper.dart';
import '../../../shared/network/repository/repository_screen.dart';
import 'looking_house_section_states.dart';

class LookingHouseSectionCubit extends Cubit<LookingHouseSectionStates> {
  LookingHouseSectionCubit() : super(LookingHouseSectionInitialState());

  static LookingHouseSectionCubit get(context) => BlocProvider.of(context);

  //find

  List<FindModel>? findModel;

  void getFindData() {
    emit(FindSectionLoadingState());
    Repository(DioHelper()).getFindCategory().then((value) {
      findModel = value.cast<FindModel>();
      emit(FindSectionSuccessState());
    }).catchError((error) {
      debugPrint('error here man ${error.toString()}');
      emit(FindSectionErrorState());
    });
  }
}
