import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/modules/sign_up/cubit/states.dart';
import 'package:hackathon/shared/components/constantse.dart';
import 'package:hackathon/shared/network/local/cache_helper.dart';

import '../../../shared/network/end_points.dart';
import '../../../shared/network/remote/dio_helper.dart';

class MainRegisterCubit extends Cubit<MainRegisterStates> {
  MainRegisterCubit() : super(MainRegisterInitialState());

  static MainRegisterCubit get(context) => BlocProvider.of(context);

  void userRegister({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phone,
    required String country,
  }) {
    DioHelper.postData(
      token: token,
      url: register,
      data: {
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
        'phoneNumber': phone,
        'country': country,
      },
    ).then((value) {
      emit(UserRegisterSuccessState());
      CacheHelper.saveData(key: 'token', value: value.data['accessToken']);
      print(value.data);
    }).catchError((error) {
      emit(UserRegisterErrorState());
      print(error);
    });
  }
}
