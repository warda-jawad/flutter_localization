
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:localization/env.dart';
import 'package:localization/pages/home_page/bloc/home_bloc.dart';
import 'package:localization/pages/login_page/bloc/login_bloc.dart';
import 'App/bloc/app_bloc.dart';
import 'data/http_helper/http_helper.dart';
import 'data/http_helper/iHttp_helper.dart';
import 'data/prefs_helper/iPrefs_helper.dart';
import 'data/prefs_helper/prefs_helper.dart';
import 'data/repository/iRepository.dart';
import 'data/repository/repository.dart';

GetIt sl = GetIt.instance;

Future initGetIt() async {
  sl.registerLazySingleton(
        () => Dio(
      BaseOptions(
        baseUrl: baseURL,
        headers: {
          'Content-Type': 'application/json',
          "charset": "utf-8",
          "Accept-Charset": "utf-8"
        },
        responseType: ResponseType.plain,
      ),
    ),
  );
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());
  sl.registerLazySingleton<IRepository>(() => Repository(sl(),sl()));
  sl.registerFactory(() => AppBloc(sl()));
  sl.registerFactory(() => HomeBloc(sl()));
  sl.registerFactory(() => LoginBloc(sl()));
}
