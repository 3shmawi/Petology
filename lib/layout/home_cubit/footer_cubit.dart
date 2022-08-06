import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/models/find_model.dart';
import 'package:hackathon/models/static_home_data/about_model.dart';
import 'package:hackathon/models/static_home_data/bet_needs_model.dart';
import 'package:hackathon/models/static_home_data/first_section_model.dart';
import 'package:hackathon/shared/network/remote/dio_helper.dart';
import 'package:hackathon/shared/network/repository/repository_screen.dart';

import '../../shared/components/constantse.dart';
import 'footer_states.dart';

class HomeCubit extends Cubit<HomeCubitStates> {
  HomeCubit() : super(HomeCubitInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  FirstSectionDataModel? firstSectionDataModel;

  void getFirstSectionHomeData() {
    emit(GetHomeDataFirstSectionLoadingState());

    Repository(DioHelper()).getHomeDataFirstSection().then((value) {
      firstSectionDataModel = value;
      emit(GetHomeDataFirstSectionSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetHomeDataFirstSectionErrorState());
    });
  }

  AboutModel? aboutModel;

  void getAboutInfoData() {
    emit(AboutSectionLoadingState());

    Repository(DioHelper()).getHomeDataAboutSection().then((value) {
      aboutModel = value;
      emit(AboutSectionSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(AboutSectionErrorState());
    });
  }

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
      print(error.toString());
      emit(PetsNeedsSectionErrorState());
    });
  }

  //find

  List<FindModel>? findModel;

  void getFindData() {
    emit(FindSectionLoadingState());
    Repository(DioHelper()).getFindCategory().then((value) {
      findModel = value.cast<FindModel>();
      emit(FindSectionSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(FindSectionErrorState());
    });
  }

  //*** footer data\\

  void getFooterDataAtHomeScreen() {
    emit(FooterSectionLoadingState());

    Repository(DioHelper()).getFooterDataFirstSection().then((value) {
      infoData = value;
      emit(FooterSectionSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(FooterSectionErrorState());
    });
  }

  getHomeData() {
    getFirstSectionHomeData();
    getAboutInfoData();
    getPestNeedsData();
    getFooterDataAtHomeScreen();
    getFindData();
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
