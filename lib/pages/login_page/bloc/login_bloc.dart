import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/pages/login_page/bloc/login_event.dart';
import 'package:localization/pages/login_page/bloc/login_state.dart';
import 'package:localization/data/repository/iRepository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  IRepository _iRepository;
  LoginBloc(this._iRepository) : super(LoginState.initail());

  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }
    if (event is Login) {
      try {
        yield state.rebuild((b) => b
          ..error = ""
          ..isLoading = true
          ..success = false
          ..isLogin = false
          ..user = null);

        final data = await _iRepository.login(
          event.email,
          event.password,
        );

        yield state.rebuild((b) => b
          ..error = ""
          ..isLoading = false
          ..success = true
          ..isLogin = true
          ..user = data);
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = "Invalid Email or Password"
          ..isLoading = false
          ..success = false
          ..isLogin = false
          ..user = null);
      }
    }
  }
}
