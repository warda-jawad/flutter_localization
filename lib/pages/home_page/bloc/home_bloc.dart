import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/data/repository/iRepository.dart';
import 'package:localization/localization/app_language.dart';
import 'package:localization/pages/home_page/bloc/home_event.dart';
import 'package:localization/pages/home_page/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  IRepository _iRepository;
  HomeBloc(this._iRepository) : super(HomeState.initail());
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is ChangeLanguage) {
      final keyLang = await _iRepository.setLanguage(event.langkey);
      changeAppLanguage(event.langkey);
      yield state.rebuild((b) => b..lang = event.langkey);
    }
  }
}
