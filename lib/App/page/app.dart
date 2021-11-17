import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/App/bloc/app_bloc.dart';
import 'package:localization/App/bloc/app_event.dart';
import 'package:localization/App/bloc/app_state.dart';
import 'package:localization/localization/app_language.dart';
import 'package:localization/localization/app_localizations.dart';
import 'package:localization/pages/home_page/page/home_page.dart';
import 'package:localization/pages/login_page/bloc/login_bloc.dart';
import 'package:localization/pages/login_page/page/login_page.dart';
import 'package:localization/pages/splach_screen.dart';
import 'package:localization/router/custom_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../injection.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _bloc = sl<AppBloc>();

  void initState() {
    _bloc.add(LangEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, AppState state) {
        return StreamBuilder(
            stream: localeSubjectAppLanguage.stream.distinct(),
            initialData:
                state.applang == 0 ? Locale('en', "") : Locale('ar', ""),
            builder: (context, snapshotLanguage) {
              return Directionality(
                textDirection:
                    state.applang == 0 ? TextDirection.ltr : TextDirection.rtl,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  locale:
                      state.applang == 0 ? Locale('en', '') : Locale('ar', ''),
                  localizationsDelegates: [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: [
                    Locale('en', ''), // English, no country code
                    Locale('ar', ''), // Arabic, no country code
                  ],
                  onGenerateRoute: CustomRoute.generateRoute,
                  // initialRoute: homeRoute,
                  home: state.isLogin ? MyHomePage() : SplashScreen(),
                ),
              );
            });
      },
    );
  }

  // redirect(bool log) {
  //   if (log == true) {
  //       Navigator.of(context).pushReplacement(
  //           MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
  //   } else {
  //
  //       Navigator.of(context).pushReplacement(MaterialPageRoute(
  //           builder: (BuildContext context) => SplashScreen()));
  //   }
  // }

}
