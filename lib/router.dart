import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widget/error.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    default:
      return MaterialPageRoute(
        builder: (contex) => const Scaffold(
          body: ErrorScreen(error: 'This doesn\'t exist'),
        ),
      );
  }
}
