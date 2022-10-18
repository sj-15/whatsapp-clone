import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  static const String routeName = '/otp-screen';
  final String verficationID;

  const OTPScreen({
    Key? key,
    required this.verficationID,
  }) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
