import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Whatsapp will need to verfiy your phone number.',
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text('Pick Country'),
          ),
        ],
      ),
    );
  }
}
