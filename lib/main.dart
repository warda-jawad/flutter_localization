import 'package:flutter/material.dart';
import 'package:localization/injection.dart';

import 'App/page/app.dart';

Future<void> main() async{
  await initGetIt();
  runApp(App());
}

