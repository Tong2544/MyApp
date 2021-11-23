import 'package:flutter/material.dart';
import 'package:mysql/configs/Type.dart';
import 'package:mysql/configs/home.dart';
import 'package:mysql/configs/login.dart';
import 'package:mysql/configs/register.dart';



class AppRoute {
  static const homeRoute = 'home';
  static const loginRoute = 'login';
  static const registerRoute = 'register';
  static const typeRoute = 'type';




  final _route = <String, WidgetBuilder>{
    homeRoute: (context) => LoginScreen(),
    loginRoute: (context) => LoginScreen(),
    registerRoute: (context) => RegisterScreen(),
    typeRoute: (context) => TypeScreen(),

  };

  get getAll => _route;
} //end class
