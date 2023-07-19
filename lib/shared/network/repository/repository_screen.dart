import 'package:hackathon/models/static_home_data/about_model.dart';
import 'package:hackathon/models/static_home_data/bet_needs_model.dart';

import '../../../models/filter_model.dart';
import '../../../models/find_model.dart';
import '../../../models/static_home_data/find_bet_by_id_model.dart';
import '../../../models/static_home_data/first_section_model.dart';
import '../../../models/static_home_data/info_model.dart';
import '../remote/dio_helper.dart';


class Repository {
  final DioHelper dioHelper;

  Repository(this.dioHelper);

  //****************************\\
  //login
  Future<String?> login(String email, String password) async {
    final result = await dioHelper.login(email, password);

    return result;
  }

// register

  //*****************************\\
  //get data pets by id
  Future<List<dynamic>> getPetById(int id) async {
    final result = await dioHelper.getPetById(id);

    return result.map((one) => FindBetsByIdModel.fromJson(one)).toList();
  }

//get data pets needs
  Future<List<dynamic>> getPetsNeedsData() async {
    final result = await dioHelper.getPetNeedsData();

    return result.map((one) => PetsNeedsModel.fromJson(one)).toList();
  }

//find
  Future<List<dynamic>> getFindCategory() async {
    final result = await dioHelper.getFindCategory();

    return result.map((one) => FindModel.fromJson(one)).toList();
  }

  //get home data first section\\

  Future<dynamic> getHomeDataFirstSection() async {
    final result = await dioHelper.getHomeDataFirstSection();

    return FirstSectionDataModel.fromJson(result);
  }

  //get footer data home screen\\

  Future<dynamic> getFooterDataFirstSection() async {
    final result = await dioHelper.getFooterDataAboutSection();

    return InfoData.fromJson(result);
  }

  //get home data about section\\

  Future<dynamic> getHomeDataAboutSection() async {
    final result = await dioHelper.getHomeDataAboutSection();

    return AboutModel.fromJson(result);
  }

  //get list filter section\\

  Future<dynamic> getListFilter(int id) async {
    final result = await dioHelper.getListFilter(id);
    print('result $result');
    return Filters.fromJson(result);
  }
}
