import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_services.dart';
import 'package:doctor/core/networking/dio_factory.dart';
import 'package:doctor/features/home/data/repos/specialization_repo.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/login/data/repos/login_repo.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/signUp/data/repo/signup_repo.dart';
import 'package:doctor/features/signUp/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.createDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  //home
  getIt.registerLazySingleton<SpecializationRepo>(
    () => SpecializationRepo(getIt()),
  );
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
