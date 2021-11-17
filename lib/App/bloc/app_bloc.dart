import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/data/repository/iRepository.dart';
import 'package:localization/localization/app_language.dart';

import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  IRepository _iRepository;

  AppBloc(this._iRepository) : super(AppState.initail());

  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is LangEvent) {
      final keyLang = await _iRepository.getLangaue();
      final isLogin = await _iRepository.getIsLogin();

      yield state.rebuild((b) => b
        ..applang = keyLang
        ..isLogin = isLogin);

      changeAppLanguage(keyLang);
    }
  }
}
