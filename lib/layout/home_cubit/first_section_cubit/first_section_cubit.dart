import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/static_home_data/first_section_model.dart';
import '../../../shared/network/remote/dio_helper.dart';
import '../../../shared/network/repository/repository_screen.dart';
import 'first_section_states.dart';

class FirstSectionCubit extends Cubit<FirstSectionStates> {
  FirstSectionCubit() : super(FirstSectionInitialState());

  static FirstSectionCubit get(context) => BlocProvider.of(context);


  FirstSectionDataModel? firstSectionDataModel;

  void getFirstSectionHomeData() {
    emit(GetHomeDataFirstSectionLoadingState());

    Repository(DioHelper()).getHomeDataFirstSection().then((value) {
      firstSectionDataModel = value;
      emit(GetHomeDataFirstSectionSuccessState());
    }).catchError((error) {
      debugPrint('error here man ${error.toString()}');
      emit(GetHomeDataFirstSectionErrorState());
    });
  }

}
