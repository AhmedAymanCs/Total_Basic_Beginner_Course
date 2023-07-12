import 'package:bloc/bloc.dart';

import 'package:exmaple/shared/blocobserver/myblocobserver.dart';
import 'package:flutter/material.dart';

import 'modules/menu/menu.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: menu(),

    );
  }
}
