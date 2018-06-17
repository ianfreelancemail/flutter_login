import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import  'screens/login/login_screen.dart';

final routes = {
  '/' :           (BuildContext context) => new LoginForm(),
  '/login':       (BuildContext context) => new LoginForm(),
  '/home':        (BuildContext context) => new HomeScreen(),


};