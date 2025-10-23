import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_service.dart';
import 'package:doctor_appointment/core/networking/dio_factory.dart';
import 'package:doctor_appointment/feature/login/data/repos/login_repo.dart';
import 'package:doctor_appointment/feature/login/prsentation/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment/feature/signUp/data/repos/sign_up_repo.dart';
import 'package:doctor_appointment/feature/signUp/presentation/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpGetIt() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerLazySingleton<SignupCubit>(() => SignupCubit(getIt()));
}
