import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/modules/login/cubit/states.dart';
import 'package:hackathon/shared/components/constantse.dart';
import 'package:hackathon/shared/network/local/cache_helper.dart';
import 'package:hackathon/shared/network/remote/dio_helper.dart';
import 'package:hackathon/shared/network/repository/repository_screen.dart';

class MainLoginCubit extends Cubit<MainLoginStates> {
  MainLoginCubit() : super(MainLoginInitialState());

  static MainLoginCubit get(context) => BlocProvider.of(context);

  Future<void> userLogin(
      {required String email, required String password}) async {
    emit(UserLoginLoadingState());
    await Repository(DioHelper()).login(email, password).then((value) {
      token = value;
      CacheHelper.saveData(key: 'token', value: value);
      emit(UserLoginSuccessState());
    }).catchError((error) {
      emit(UserLoginErrorState());
    });
  }
}
