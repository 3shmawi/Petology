import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/layout/home_cubit/second_section_cubit/second_section_states.dart';

import '../../../models/static_home_data/about_model.dart';
import '../../../shared/network/remote/dio_helper.dart';
import '../../../shared/network/repository/repository_screen.dart';

class SecondSectionCubit extends Cubit<SecondSectionStates> {
  SecondSectionCubit() : super(SecondSectionInitialState());

  static SecondSectionCubit get(context) => BlocProvider.of(context);

  AboutModel? aboutModel;

  void getAboutInfoData() {
    emit(AboutSectionLoadingState());

    Repository(DioHelper()).getHomeDataAboutSection().then((value) {
      aboutModel = value;
      emit(AboutSectionSuccessState());
    }).catchError((error) {
      debugPrint('error here man ${error.toString()}');
      emit(AboutSectionErrorState());
    });
  }
}
