import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_service.dart';
import 'package:doctor_appointment/core/networking/dio_factory.dart';
import 'package:doctor_appointment/feature/home/data/apis/home_api_service.dart';
import 'package:doctor_appointment/feature/home/data/repos/home_repo.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_cubit.dart';
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
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  //home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
