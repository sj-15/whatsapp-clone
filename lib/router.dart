import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widget/error.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/features/auth/screens/user_informations_screen.dart';
import 'package:whatsapp_clone/features/contatcs/screens/select_contact_screen.dart';

import 'features/auth/screens/otp_screend.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verificationId,
        ),
      );
    case UserInformationScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserInformationScreen(),
      );
    case SelectContactList.routeName:
      return MaterialPageRoute(
        builder: (context) => const SelectContactList(),
      );
    default:
      return MaterialPageRoute(
        builder: (contex) => const Scaffold(
          body: ErrorScreen(error: 'This doesn\'t exist'),
        ),
      );
  }
}
