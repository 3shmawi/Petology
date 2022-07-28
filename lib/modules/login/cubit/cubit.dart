import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/modules/login/cubit/states.dart';
import 'package:hackathon/shared/components/constantse.dart';
import 'package:hackathon/shared/network/local/cache_helper.dart';

import '../../../shared/network/end_points.dart';
import '../../../shared/network/remote/dio_helper.dart';

class MainLoginCubit extends Cubit<MainLoginStates> {
  MainLoginCubit() : super(MainLoginInitialState());

  static MainLoginCubit get(context) => BlocProvider.of(context);

  void userLogin({required String email, required String password}) {
    DioHelper.postData(
      token: token,
      url: login,
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      emit(UserLoginSuccessState());
      CacheHelper.saveData(key: 'token', value: value.data['accessToken']);
    }).catchError((error) {
      emit(UserLoginErrorState());
      print('$error');
    });
  }
}
