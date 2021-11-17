import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization/app_language.dart';
import 'package:localization/localization/app_localizations.dart';
import 'package:localization/pages/home_page/bloc/home_bloc.dart';
import 'package:localization/pages/home_page/bloc/home_event.dart';
import 'package:localization/pages/home_page/bloc/home_state.dart';
import '../../../injection.dart';

const String aboutRoute = "about";

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _bloc = sl<HomeBloc>();
  String _dropDownValue = "English";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, HomeState state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 60, horizontal: 60),
                  child: Image.asset("assest/images/anne.webp"),
                ),
                // User Name
                Container(
                  width: 130,
                  height: 40,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!
                          .translate("Username:")
                          .toString(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: 230,
                  height: 50,
                  child: Center(
                    child: Text("Anne Hathaway"),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                // Phone Number
                Container(
                  width: 130,
                  height: 40,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!
                          .translate("Phone Number:")
                          .toString(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: 230,
                  height: 50,
                  child: Center(
                    child: Text("098732626"),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                // Email
                Container(
                  width: 130,
                  height: 40,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!
                          .translate("Email:")
                          .toString(),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: 230,
                  height: 50,
                  child: Center(
                    child: Text("Anne@gmail.com"),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 38.0, top: 50, right: 250),
                  child: DropdownButton<String>(
                    // ignore: unnecessary_null_comparison
                    hint: _dropDownValue == null
                        ? Text('Choose the Language')
                        : Text(
                            _dropDownValue,
                            style: TextStyle(
                              color: Colors.blueGrey.shade400,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                    isExpanded: true,
                    iconSize: 30.0,
                    style: TextStyle(color: Colors.blue),
                    items: [
                      'English',
                      'Arabic',
                    ].map(
                      (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(val),
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(() {
                        _dropDownValue = val as String;
                        if (val == "English") {
                          changeAppLanguage(0);
                          _bloc.add(ChangeLanguage((b) => b..langkey = 0));
                        } else {
                          changeAppLanguage(1);
                          _bloc.add(ChangeLanguage((b) => b..langkey = 1));
                        }
                      });
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, aboutRoute),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 248.0),
                    child: Text(
                      "About US",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
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
