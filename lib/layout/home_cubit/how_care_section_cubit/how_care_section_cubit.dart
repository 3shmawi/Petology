import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/static_home_data/bet_needs_model.dart';
import '../../../shared/network/remote/dio_helper.dart';
import '../../../shared/network/repository/repository_screen.dart';
import 'how_care_section_states.dart';

class HowCareSectionCubit extends Cubit<HowCareSectionStates> {
  HowCareSectionCubit() : super(HowCareSectionInitialState());

  static HowCareSectionCubit get(context) => BlocProvider.of(context);

  List<PetsNeedsModel>? petsNeedsModel;

  void getPestNeedsData() {
    emit(PetsNeedsSectionLoadingState());
    Repository(DioHelper()).getPetsNeedsData().then((value) {
      for (int i = 0; i < value.length; i++) {
        value[i].imageUrl.replaceAll(' ', '');
      }
      petsNeedsModel = value.cast<PetsNeedsModel>();
      emit(PetsNeedsSectionSuccessState());
    }).catchError((error) {
      debugPrint('error here man ${error.toString()}');
      emit(PetsNeedsSectionErrorState());
    });
  }
}
