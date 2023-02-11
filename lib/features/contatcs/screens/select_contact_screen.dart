import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectContactList extends ConsumerWidget {
  static const String routeName = '/select-contact';
  const SelectContactList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select contact'),
      ),
    );
  }
}
