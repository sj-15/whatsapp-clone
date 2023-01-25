import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

class MobilelayoutScreen extends StatefulWidget {
  const MobilelayoutScreen({super.key});

  @override
  State<MobilelayoutScreen> createState() => _MobilelayoutScreenState();
}

class _MobilelayoutScreenState extends State<MobilelayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: textColor,
      child: const Center(
        child: Text(
          'Mobile Layout screen',
          style: TextStyle(
            color: senderMessageColor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
