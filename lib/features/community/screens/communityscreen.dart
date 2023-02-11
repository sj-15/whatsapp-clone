import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Introducing communities',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          Text(
            'Easily organise your related groups and send announcements. Now, your communities, line neighbourhoods or schools, can have their own space.',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
