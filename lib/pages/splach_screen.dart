import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/pages/home_page/page/home_page.dart';
import '../injection.dart';
import 'login_page/bloc/login_bloc.dart';
import 'login_page/bloc/login_state.dart';
import 'login_page/page/login_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _bloc = sl<LoginBloc>();
//  late Future<bool> loginCheckFuture;
//   await SharedPreferences.getInstance()).getBool(IS_LOGIN) == true
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, LoginState state) {
        return Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      color: Colors.deepOrangeAccent,
                    ),

                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    "assest/images/logo.webp",
                    // fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
