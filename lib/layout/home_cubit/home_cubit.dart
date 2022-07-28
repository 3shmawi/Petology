import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/models/static_home_data/about_model.dart';
import 'package:hackathon/models/static_home_data/first_section_model.dart';
import 'package:hackathon/shared/network/end_points.dart';
import 'package:hackathon/shared/network/remote/dio_helper.dart';

import '../../models/static_home_data/find_bet_by_id_model.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeCubitStates> {
  HomeCubit() : super(HomeCubitInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  FirstSectionDataModel? firstSectionDataModel;

  void getFirstSectionHomeData() {
    emit(GetHomeDataFirstSectionLoadingState());
    DioHelper.getData(url: homeDataFirstSection).then((value) {
      firstSectionDataModel = FirstSectionDataModel.fromJson(value.data);
      emit(GetHomeDataFirstSectionSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetHomeDataFirstSectionErrorState());
    });
  }

  AboutModel? aboutModel;

  void getAboutInfoData() {
    emit(AboutSectionLoadingState());
    DioHelper.getData(url: about).then((value) {
      aboutModel = AboutModel.fromJson(value.data);
      emit(AboutSectionSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(AboutSectionErrorState());
    });
  }

  bool coloredCarOne = false;
  bool coloredCarTwo = false;

  void changeColoredCardOne() {
    coloredCarOne = !coloredCarOne;
    emit(ChangeColorCardOneStates());
  }

  void changeColoredCardTwo() {
    coloredCarTwo = !coloredCarTwo;
    emit(ChangeColorCardTwoStates());
  }

}
